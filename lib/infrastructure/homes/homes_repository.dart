import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/infrastructure/homes/home_dto.dart';
import 'package:r_home/infrastructure/homes/homes_extension.dart';

class HomesRepository implements IHomesRepository {
  final FirebaseFirestore _firestore;
  static const String HOMES_COLLECTION = "homes";
  final IAuthFacade _authFacade;
  final FirebaseStorage _storage;

  HomesRepository(this._firestore, this._authFacade, this._storage);

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
  Future<List<String>> getHomeImages(String homeUuid) async {
    List<String> listURL = [];

    await _storage.ref("$HOMES_COLLECTION/" + homeUuid).listAll()
      .then((value) async => {
        print("Images received"),
        for (var ref in value.items) {
          listURL.add(await ref.getDownloadURL())
        }
      });

    return listURL;
  }

  @override
  Future<void> create(Home home, List<String> imagesPath) async {
    final userId = _authFacade.getSignedInUserId()!;

    for (var i = 0; i < imagesPath.length; i++) {
      _storage.ref("/$HOMES_COLLECTION/" + home.uuid + "/$i")
        .putFile(File(imagesPath[i]))
        .then((res) async => {
          print("Image uploaded successfuly"),
          if (i == 0) {            
            home = home.copyWith(
              host: userId,
              mainImageUrl: await res.ref.getDownloadURL()
            ),

            _firestore
              .collection(HOMES_COLLECTION)
              .doc(home.uuid)
              .set(HomeDto.fromDomain(home).toJson())
              .then((_) => print("Home created successfuly"))
              .catchError((onError) => print(onError))
          }
        });
    }
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
