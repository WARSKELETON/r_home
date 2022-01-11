import 'package:firebase_auth/firebase_auth.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/infrastructure/auth/user_dto.dart';

extension FirebaseUserDomainX on User {
  DomainUser toDomain(UserDto user) {
    return DomainUser(
      id: uid,
      email: email,
      name: displayName,
      photo: user.photo,
      walletAddress: user.walletAddress,
      role: user.role,
      numTokens: user.numTokens
    );
  }
}