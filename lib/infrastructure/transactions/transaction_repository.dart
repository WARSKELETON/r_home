import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';
import 'package:r_home/infrastructure/transactions/rhome_transaction_dto.dart';

abstract class TransactionRepository {
  final FirebaseFirestore firestore;
  static const String PARENT_COLLECTION = "user-data";
  static const String TRANSACTION_COLLECTION = "transactions";

  TransactionRepository(this.firestore);

  Future<void> createTransaction(RhomeTransaction transaction) async {
    transaction.copyWith(ts: DateTime.now());
    
    firestore
      .collection(PARENT_COLLECTION)
      .doc(transaction.senderId)
      .collection(TRANSACTION_COLLECTION)
      .doc(transaction.uuid)
      .set(RhomeTransactionDto.fromDomain(transaction).toJson())
      .then((_) => print("Transaction added to the blockchain"))
      .catchError((onError) => print(onError));

    if (transaction.receiverId != "") {
      firestore
        .collection(PARENT_COLLECTION)
        .doc(transaction.receiverId)
        .collection(TRANSACTION_COLLECTION)
        .doc(transaction.uuid)
        .set(RhomeTransactionDto.fromDomain(transaction).toJson())
        .then((_) => print("Transaction added to the blockchain"))
        .catchError((onError) => print(onError));
    }
  }
}
