import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/my_homes/i_my_homes_repository.dart';
import 'package:r_home/infrastructure/homes/home_dto.dart';
import 'package:r_home/infrastructure/my_homes/my_homes_extension.dart';

class MyHomesRepository implements IMyHomesRepository {
  final FirebaseFirestore _firestore;
  static const String HOMES_COLLECTION = "my-homes";
  final IAuthFacade _authFacade;

  MyHomesRepository(this._firestore, this._authFacade);

  @override
  Stream<List<Home>> watchAll() async* {
    final userId = _authFacade.getSignedInUserId()!;

    final colRef = _firestore
        .collection(HOMES_COLLECTION)
        .doc(userId)
        .collection(HOMES_COLLECTION);

    yield* colRef.snapshots().map((query) => query.toListHome());
  }

  @override
  Stream<Home> watch(String homeUuid) async* {
    final userId = _authFacade.getSignedInUserId()!;

    final docRef = _firestore
        .collection(HOMES_COLLECTION)
        .doc(userId)
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
        .doc(userId)
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
    final userId = _authFacade.getSignedInUserId()!;

    home = home.copyWith(host: userId);

    _firestore
        .collection(HOMES_COLLECTION)
        .doc(userId)
        .collection(HOMES_COLLECTION)
        .doc(home.uuid)
        .update(HomeDto.fromDomain(home).toJson())
        .then((_) => print("Home updated successfuly"))
        .catchError((onError) => print(onError));
  }
}
