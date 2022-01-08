import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/infrastructure/local_activities/local_activity_dto.dart';

extension MyLocalActivitiesExtension on QuerySnapshot {
  List<LocalActivity> toListLocalActivity() {
    List<LocalActivity> localActivities = [];
    for (var doc in docs) {
      localActivities.add(LocalActivityDto.fromFirestoreQueryDoc(doc).toDomain());
    }
    return localActivities;
  }
}

extension MyLocalActivitiesExtensionDocumentSnapshot on DocumentSnapshot {
  LocalActivity toLocalActivity() {
    return LocalActivityDto.fromFirestore(this).toDomain();
  }
}