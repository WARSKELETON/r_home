part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.initialize() = Initialize;
  const factory TransactionsEvent.transactionsReceived(List<RhomeTransaction> transactions) = TransactionsReceived;

}