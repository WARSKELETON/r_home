import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/transactions/i_transactions_watcher.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final ITransactionsWatcher _transactionsRepository;

  TransactionsBloc(this._transactionsRepository) : super(TransactionsState.initial()) {
    on<Initialize>(_onInitialize);
    on<TransactionsReceived>(_onTransactionsReceived);
  }

  StreamSubscription<List<RhomeTransaction>>? _transactionsStreamSubscription;

  void _onInitialize(Initialize event, Emitter<TransactionsState> emit) {
    _transactionsStreamSubscription = _transactionsRepository
        .watchAllFromUser().listen(
          (transactions) => add(TransactionsEvent.transactionsReceived(transactions)),
        );
    emit(state);
  }

  void _onTransactionsReceived(TransactionsReceived event, Emitter<TransactionsState> emit) {
    emit(state.copyWith(transactions: event.transactions));
  }

  @override
  Future<void> close() {
    _transactionsStreamSubscription?.cancel();
    return super.close();
  }
}
