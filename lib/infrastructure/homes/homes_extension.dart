import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/infrastructure/homes/home_dto.dart';

extension HomesExtensionQuerySnapshot on QuerySnapshot {
  List<Home> toListHome() {
    List<Home> rentals = [];
    for (var doc in docs) {
      rentals.add(HomeDto.fromFirestoreQueryDoc(doc).toDomain());
    }
    return rentals;
  }
}

extension HomesExtensionDocumentSnapshot on DocumentSnapshot {
  Home toHome() {
    return HomeDto.fromFirestore(this).toDomain();
  }
}