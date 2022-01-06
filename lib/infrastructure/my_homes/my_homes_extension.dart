import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/infrastructure/homes/home_dto.dart';

extension MyHomesExtension on QuerySnapshot {
  List<Home> toListHome() {
    List<Home> homes = [];
    for (var doc in docs) {
      homes.add(HomeDto.fromFirestoreQueryDoc(doc).toDomain());
    }
    return homes;
  }
}