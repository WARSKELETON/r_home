import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/infrastructure/rentals/rental_dto.dart';

extension RentalsExtensionQuerySnapshot on QuerySnapshot {
  List<Rental> toListRental() {
    List<Rental> rentals = [];
    for (var doc in docs) {
      rentals.add(RentalDto.fromFirestoreQueryDoc(doc).toDomain());
    }
    return rentals;
  }
}

extension RentalsExtensionDocumentSnapshot on DocumentSnapshot {
  Rental toRental() {
    return RentalDto.fromFirestore(this).toDomain();
  }
}