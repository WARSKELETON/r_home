import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/infrastructure/disputes/dispute_dto.dart';

extension DisputesExtensionQuerySnapshot on QuerySnapshot {
  List<Dispute> toListDispute() {
    List<Dispute> rentals = [];
    for (var doc in docs) {
      rentals.add(DisputeDto.fromFirestoreQueryDoc(doc).toDomain());
    }
    return rentals;
  }
}

extension DisputesExtensionDocumentSnapshot on DocumentSnapshot {
  Dispute toDispute() {
    return DisputeDto.fromFirestore(this).toDomain();
  }
}