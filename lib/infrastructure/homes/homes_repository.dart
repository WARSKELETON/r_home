import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/infrastructure/homes/home_dto.dart';
import 'package:r_home/infrastructure/homes/homes_extension.dart';

class HomesRepository implements IHomesRepository {
  final FirebaseFirestore _firestore;
  static const String HOMES_COLLECTION = "homes";
  final IAuthFacade _authFacade;

  HomesRepository(this._firestore, this._authFacade);

  @override
  Stream<List<Home>> watchAll() async* {
    final colRef = _firestore
        .collection(HOMES_COLLECTION);

    yield* colRef.snapshots().map((query) => query.toListHome());
  }

  @override
  Stream<List<Home>> watchAllFiltered(String location) async* {
    final colRef = _firestore
        .collection(HOMES_COLLECTION)
        .where("location", isEqualTo: location);

    yield* colRef.snapshots().map((query) => query.toListHome());
  }

  @override
  Stream<List<Home>> watchAllFromHomeIds(List<String> homeIds) async* {
    final colRef = _firestore
        .collection(HOMES_COLLECTION)
        .where("uuid", whereIn: homeIds);

    yield* colRef.snapshots().map((query) => query.toListHome());
  }

  @override
  Stream<List<Home>> watchAllFromHost() async* {
    final hostId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(HOMES_COLLECTION)
        .where("host", isEqualTo: hostId);

    yield* colRef.snapshots().map((query) => query.toListHome());
  }

  @override
  Stream<List<Home>> watchAllFromActivityId(String activityUuid) async* {
    final colRef = _firestore
        .collection(HOMES_COLLECTION)
        .where("localActivities", arrayContains: activityUuid);

    yield* colRef.snapshots().map((query) => query.toListHome());
  }

  @override
  Stream<Home> watch(String homeUuid) async* {
    final docRef = _firestore
        .collection(HOMES_COLLECTION)
        .doc(homeUuid);

    yield* docRef.snapshots().map((doc) => doc.toHome());
  }

  @override
  Future<void> create(Home home) async {
    final userId = _authFacade.getSignedInUserId()!;

    home = home.copyWith(host: userId);

    _firestore
        .collection(HOMES_COLLECTION)
        .doc(home.uuid)
        .set(HomeDto.fromDomain(home).toJson())
        .then((_) => print("Home created successfuly"))
        .catchError((onError) => print(onError));
  }

  @override
  void delete(Home home) {}

  @override
  Future<void> update(Home home) async {
    _firestore
        .collection(HOMES_COLLECTION)
        .doc(home.uuid)
        .update(HomeDto.fromDomain(home).toJson())
        .then((_) => print("Home updated successfuly"))
        .catchError((onError) => print(onError));
  }
}
