import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/disputes/i_disputes_repository.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/infrastructure/disputes/dispute_dto.dart';
import 'package:r_home/infrastructure/disputes/disputes_extension.dart';
import 'package:r_home/infrastructure/homes/homes_extension.dart';
import 'package:r_home/infrastructure/rentals/rentals_extension.dart';

class DisputesRepository implements IDisputesRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  static const String PARENT_COLLECTION = "user-data";
  static const String RENTALS_COLLECTION = "rentals";
  static const String HOMES_COLLECTION = "homes";
  static const String DISPUTES_COLLECTION = "disputes";
  final IAuthFacade _authFacade;

  DisputesRepository(this._firestore, this._authFacade, this._storage);

  @override
  Stream<List<Dispute>> watchAll() async* {
    // Watch all that are not problems with payments
    final colRef = _firestore
        .collection(DISPUTES_COLLECTION)
        .where("category", isNotEqualTo: DisputeCategory.problems_with_payments.name);

    yield* colRef.snapshots().map((query) => query.toListDispute());
  }

  @override
  Stream<List<Dispute>> watchAllFromUser() async* {
    final userId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(DISPUTES_COLLECTION)
        .where("issuerUuid", isEqualTo: userId);

    yield* colRef.snapshots().map((query) => query.toListDispute());
  }

  @override
  Stream<Dispute> watch(String disputeUuid) async* {
    final docRef = _firestore
        .collection(DISPUTES_COLLECTION)
        .doc(disputeUuid);

    yield* docRef.snapshots().map((doc) => doc.toDispute());
  }

  @override
  Stream<Home> watchHomeFromDispute(String homeUuid) async* {
    final docRef = _firestore
        .collection(HOMES_COLLECTION)
        .doc(homeUuid);

    yield* docRef.snapshots().map((doc) => doc.toHome());
  }

  @override
  Stream<Rental> watchRentalFromDispute(String rentalUuid, String issuerUuid) async* {
    final docRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(issuerUuid)
        .collection(RENTALS_COLLECTION)
        .doc(rentalUuid);

    yield* docRef.snapshots().map((doc) => doc.toRental());
  }

  @override
  Future<DomainUser> getHost(String hostId) {
    return _authFacade.getUserById(hostId);
  }

  @override
  Future<void> create(Dispute dispute, List<String> imagesPath) async {
    final userId = _authFacade.getSignedInUserId()!;
    final username = _authFacade.getSignedInUsername()!;

    dispute = dispute.copyWith(
      issuerUuid: userId,
      issuerUsername: "@" + (username.replaceAll(" ", "").toLowerCase()),
      creationDate: DateTime.now()
    );

    _firestore
      .collection(DISPUTES_COLLECTION)
      .doc(dispute.uuid)
      .set(DisputeDto.fromDomain(dispute).toJson())
      .then((_) => print("Dispute created successfuly"))
      .catchError((onError) => print(onError));

    for (var i = 0; i < imagesPath.length; i++) {
      _storage.ref("/disputes/" + dispute.uuid + "/$i")
        .putFile(File(imagesPath[i]))
        .then((_) => print("Image uploaded successfuly"));
    }
  }

  @override
  void delete(Dispute dispute) {}

  @override
  Future<void> update(Dispute dispute) async {
    _firestore
        .collection(DISPUTES_COLLECTION)
        .doc(dispute.uuid)
        .update(DisputeDto.fromDomain(dispute).toJson())
        .then((_) => print("Dispute updated successfuly"))
        .catchError((onError) => print(onError));
  }
}
