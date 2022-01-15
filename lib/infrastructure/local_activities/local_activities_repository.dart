import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/local_activities/i_local_activities_repository.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_extension.dart';
import 'package:r_home/infrastructure/local_activities/local_activity_dto.dart';

class LocalActivitiesRepository implements ILocalActivitiesRepository {
  final FirebaseFirestore _firestore;
  static const String ACTIVITIES_COLLECTION = "local-activities";
  final IAuthFacade _authFacade;

  LocalActivitiesRepository(this._firestore, this._authFacade);

  @override
  Stream<List<LocalActivity>> watchAll() async* {
    final colRef = _firestore
        .collection(ACTIVITIES_COLLECTION);

    yield* colRef.snapshots().map((query) => query.toListLocalActivity());
  }

    @override
  Stream<List<LocalActivity>> watchAllFromUser() async* {
    final userId = _authFacade.getSignedInUserId();

    final colRef = _firestore
        .collection(ACTIVITIES_COLLECTION)
        .where("producer", isEqualTo: userId);

    yield* colRef.snapshots().map((query) => query.toListLocalActivity());
  }

  @override
  Stream<LocalActivity> watch(String localActivityUuid) async* {
    final docRef = _firestore
        .collection(ACTIVITIES_COLLECTION)
        .doc(localActivityUuid);

    yield* docRef.snapshots().map((doc) => doc.toLocalActivity());
  }

  @override
  Future<void> create(LocalActivity localActivity) async {
    final userId = _authFacade.getSignedInUserId()!;

    localActivity = localActivity.copyWith(producer: userId);

    _firestore
      .collection(ACTIVITIES_COLLECTION)
      .doc(localActivity.uuid)
      .set(LocalActivityDto.fromDomain(localActivity).toJson())
      .then((_) => print("Activity created successfuly"))
      .catchError((onError) => print(onError));
  }

  @override
  void delete(LocalActivity localActivity) {

  }

  @override
  Future<void> update(LocalActivity localActivity) async {
    _firestore
        .collection(ACTIVITIES_COLLECTION)
        .doc(localActivity.uuid)
        .update(LocalActivityDto.fromDomain(localActivity).toJson())
        .then((_) => print("Activity updated successfuly"))
        .catchError((onError) => print(onError));
  }
}
