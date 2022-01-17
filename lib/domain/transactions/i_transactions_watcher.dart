import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';

abstract class ITransactionsWatcher {
  Stream<List<RhomeTransaction>> watchAllFromUser();
}