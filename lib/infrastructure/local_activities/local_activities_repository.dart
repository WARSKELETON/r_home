import 'dart:io';

import 'package:async/async.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/local_activities/i_local_activities_repository.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_extension.dart';
import 'package:r_home/infrastructure/local_activities/local_activity_dto.dart';

class LocalActivitiesRepository implements ILocalActivitiesRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  static const String ACTIVITIES_COLLECTION = "local-activities";
  final IAuthFacade _authFacade;

  LocalActivitiesRepository(this._firestore, this._authFacade, this._storage);

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
  Stream<List<LocalActivity>> watchAllFromIds(List<String> activitiesIds) async* {
    final docRef = _firestore
        .collection(ACTIVITIES_COLLECTION)
        .where("uuid", whereIn: activitiesIds);

    yield* docRef.snapshots().map((doc) => doc.toListLocalActivity());
  }

  @override
  Stream<List<LocalActivity>> watchAllFromLocation(String location) async* {
    final docRef = _firestore
        .collection(ACTIVITIES_COLLECTION)
        .where("location", isEqualTo: location);

    yield* docRef.snapshots().map((doc) => doc.toListLocalActivity());
  }

  @override
  Stream<List<LocalActivity>> watchAllFromHome(List<String> localActivitiesUuid) async* {
    final docRef = _firestore
        .collection(ACTIVITIES_COLLECTION)
        .where("uuid", whereIn: localActivitiesUuid);

    yield* docRef.snapshots().map((doc) => doc.toListLocalActivity());
  }

  @override
  Stream<LocalActivity> watch(String localActivityUuid) async* {
    final docRef = _firestore
        .collection(ACTIVITIES_COLLECTION)
        .doc(localActivityUuid);

    yield* docRef.snapshots().map((doc) => doc.toLocalActivity());
  }

  @override
  Future<List<String>> getLocalActivityImages(String localActivityUuid) async {
    List<String> listURL = [];

    await _storage.ref("$ACTIVITIES_COLLECTION/" + localActivityUuid).listAll()
      .then((value) async => {
        print("Images received"),
        for (var ref in value.items) {
          listURL.add(await ref.getDownloadURL())
        }
      });

    return listURL;
  }

  @override
  Future<void> create(LocalActivity localActivity, List<String> imagesPath) async {
    final userId = _authFacade.getSignedInUserId()!;

    for (var i = 0; i < imagesPath.length; i++) {
      _storage.ref("/$ACTIVITIES_COLLECTION/" + localActivity.uuid + "/$i")
        .putFile(File(imagesPath[i]))
        .then((res) async => {
          print("Image uploaded successfuly"),
          if (i == 0) {
            localActivity = localActivity.copyWith(
              producer: userId,
              mainImageUrl: await res.ref.getDownloadURL()
            ),

            _firestore
              .collection(ACTIVITIES_COLLECTION)
              .doc(localActivity.uuid)
              .set(LocalActivityDto.fromDomain(localActivity).toJson())
              .then((_) => print("Activity created successfuly"))
              .catchError((onError) => print(onError))
          }
        });
    }
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
