import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';
import 'package:r_home/infrastructure/transactions/rhome_transaction_dto.dart';

extension TransactionsExtensionQuerySnapshot on QuerySnapshot {
  List<RhomeTransaction> toListTransaction() {
    List<RhomeTransaction> transactions = [];
    for (var doc in docs) {
      transactions.add(RhomeTransactionDto.fromFirestoreQueryDoc(doc).toDomain());
    }
    return transactions;
  }
}