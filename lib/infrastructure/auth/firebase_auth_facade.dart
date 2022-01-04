import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/domain/auth/auth_failure.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/infrastructure/auth/user_dto.dart';
import './firebase_user_mapper.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;
  static const String USERS_COLLECTION = "Users";

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn, 
    this._firestore,
  );

  @override
  Future<Option<DomainUser>> getSignedInUser() async {
    final userDto = await getCurrentUserDto();

   if (userDto == null) {
     return optionOf(null);
   }

    return optionOf(_firebaseAuth.currentUser?.toDomain(userDto));
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);

      if (await isUserRegistered()) {
        return right(unit);
      } else {
        return left(const AuthFailure.userNotRegistered());
      }
      
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerUserWithRole(String role) async {
    try {
      final docRef = _firestore
          .collection(USERS_COLLECTION)
          .doc(_firebaseAuth.currentUser?.uid);

      final isRegistered = await isUserRegistered();

      if (!isRegistered) {
        final userDto = UserDto(
          id: _firebaseAuth.currentUser!.uid,
          email: _firebaseAuth.currentUser?.email,
          name: _firebaseAuth.currentUser?.displayName,
          photo: _firebaseAuth.currentUser?.photoURL,
          role: role,
          walletAddress: "0xASADKSANKSNFMA",
          numTokens: 0
        );

        await docRef.set(userDto.toJson());
        return right(unit);
      }
      return left(const AuthFailure.userAlreadyRegistered());
    } on FirebaseException catch (e) {
      print("Missing Permissions");
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  Future<bool> isUserRegistered() async {
    try {
      final docRef = _firestore
          .collection(USERS_COLLECTION)
          .doc(_firebaseAuth.currentUser?.uid);

      final doc = await docRef.get();

      return doc.exists;
    } on FirebaseException catch (e) {
      print("Missing Permissions");
    }

    return false;
  }

  Future<UserDto?> getCurrentUserDto() async {
    try {
      final docRef = _firestore
          .collection(USERS_COLLECTION)
          .doc(_firebaseAuth.currentUser?.uid);

      final doc = await docRef.get();

      if (doc.exists) {
        final userDto = UserDto.fromFirestore(doc);
        return userDto;
      } else {
        return null;
      }
    } on FirebaseException catch (e) {
      print("Missing Permissions");
      return null;
    }
  }
}