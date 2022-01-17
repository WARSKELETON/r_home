part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  factory TransactionsState({
    required List<RhomeTransaction> transactions,
  }) = _TransactionsState;

  factory TransactionsState.initial() => TransactionsState(
    transactions: [],
  );
}
