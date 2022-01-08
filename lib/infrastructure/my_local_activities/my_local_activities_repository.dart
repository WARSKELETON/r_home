import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/domain/my_local_activities/i_my_local_activities_repository.dart';
import 'package:r_home/infrastructure/local_activities/local_activity_dto.dart';
import 'package:r_home/infrastructure/my_local_activities/my_local_activities_extension.dart';

class MyLocalActivitiesRepository implements IMyLocalActivitiesRepository {
  final FirebaseFirestore _firestore;
  static const String PARENT_COLLECTION = "my-activities";
  static const String ACTIVITIES_COLLECTION = "my-activities";
  final IAuthFacade _authFacade;

  MyLocalActivitiesRepository(this._firestore, this._authFacade);

  @override
  Stream<List<LocalActivity>> watchAll() async* {
    final userId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(ACTIVITIES_COLLECTION);

    yield* colRef.snapshots().map((query) => query.toListLocalActivity());
  }

  @override
  Stream<LocalActivity> watch(String localActivityUuid) async* {
    final userId = _authFacade.getSignedInUserId()!;

    final docRef = _firestore
        .collection(PARENT_COLLECTION)
        .doc(userId)
        .collection(ACTIVITIES_COLLECTION)
        .doc(localActivityUuid);

    yield* docRef.snapshots().map((doc) => doc.toLocalActivity());
  }

  @override
  Future<void> create(LocalActivity localActivity) async {
    final userId = _authFacade.getSignedInUserId()!;

    _firestore
      .collection(PARENT_COLLECTION)
      .doc(userId)
      .collection(ACTIVITIES_COLLECTION)
      .doc(localActivity.uuid)
      .set(LocalActivityDto.fromDomain(localActivity).toJson())
      .then((_) => print("Activity created successfuly"))
      .catchError((onError) => print(onError));
  }

  @override
  void delete(LocalActivity home) {

  }

  @override
  Future<void> update(LocalActivity home, String docId) async {
    
  }
}