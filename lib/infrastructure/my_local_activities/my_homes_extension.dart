import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/infrastructure/local_activities/local_activity_dto.dart';

extension MyHomesExtension on QuerySnapshot {
  List<LocalActivity> toListLocalActivity() {
    List<LocalActivity> homes = [];
    for (var doc in docs) {
      homes.add(LocalActivityDto.fromFirestoreQueryDoc(doc).toDomain());
    }
    return homes;
  }
}