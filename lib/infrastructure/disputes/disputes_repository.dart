import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/disputes/i_homes_repository.dart';
import 'package:r_home/infrastructure/disputes/dispute_dto.dart';
import 'package:r_home/infrastructure/disputes/disputes_extension.dart';

class DisputesRepository implements IDisputesRepository {
  final FirebaseFirestore _firestore;
  static const String DISPUTES_COLLECTION = "disputes";
  final IAuthFacade _authFacade;

  DisputesRepository(this._firestore, this._authFacade);

  @override
  Stream<List<Dispute>> watchAll() async* {
    final colRef = _firestore
        .collection(DISPUTES_COLLECTION);

    yield* colRef.snapshots().map((query) => query.toListDispute());
  }

  @override
  Stream<List<Dispute>> watchAllFromUser() async* {
    final hostId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(DISPUTES_COLLECTION)
        .where("host", isEqualTo: hostId);

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
  Future<void> create(Dispute dispute) async {
    final userId = _authFacade.getSignedInUserId()!;

    dispute = dispute.copyWith(issuerUuid: userId);

    _firestore
        .collection(DISPUTES_COLLECTION)
        .doc(dispute.uuid)
        .set(DisputeDto.fromDomain(dispute).toJson())
        .then((_) => print("Dispute created successfuly"))
        .catchError((onError) => print(onError));
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
