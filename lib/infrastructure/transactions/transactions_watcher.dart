import 'package:async/async.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/transactions/i_transactions_watcher.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';
import 'package:r_home/infrastructure/transactions/transaction_repository.dart';
import 'package:r_home/infrastructure/transactions/transactions_extension.dart';

class TransactionsWatcher extends TransactionRepository implements ITransactionsWatcher {
  final IAuthFacade _authFacade;

  TransactionsWatcher(FirebaseFirestore _firestore, this._authFacade) : super(_firestore);

  @override
  Stream<List<RhomeTransaction>> watchAllFromUser() async* {
    final userId = _authFacade.getSignedInUserId()!;

    final colRef = firestore
        .collection(TransactionRepository.PARENT_COLLECTION)
        .doc(userId)
        .collection(TransactionRepository.TRANSACTION_COLLECTION);

    yield* colRef.snapshots().map((query) => query.toListTransaction());
  }

}
