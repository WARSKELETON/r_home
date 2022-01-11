import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/disputes/i_homes_repository.dart';

part 'disputes_event.dart';
part 'disputes_state.dart';
part 'disputes_bloc.freezed.dart';

class DisputesBloc extends Bloc<DisputesEvent, DisputesState> {
    final IDisputesRepository _disputesRepository;

  DisputesBloc(this._disputesRepository) : super(DisputesState.initial()) {
    on<Initialize>(_onInitialize);
    on<DisputesReceived>(_onDisputesReceived);
    on<DisputeReceived>(_onDisputeReceived);
    on<WatchDispute>(_onWatchDispute);
    on<VoteAgainst>(_onVoteAgainst);
    on<VoteIndiferent>(_onVoteIndiferent);
    on<VoteFavour>(_onVoteFavour);
  }

  StreamSubscription<List<Dispute>>? _myDisputesStreamSubscription;
  StreamSubscription<List<Dispute>>? _disputesStreamSubscription;
  StreamSubscription<Dispute>? _disputeStreamSubscription;

  void _onInitialize(Initialize event, Emitter<DisputesState> emit) {
    event.allDisputes ?
    _disputesStreamSubscription = _disputesRepository.watchAll().listen(
      (disputes) => add(DisputesEvent.disputesReceived(disputes)),
    ) :
    _myDisputesStreamSubscription = _disputesRepository.watchAllFromUser().listen(
      (disputes) => add(DisputesEvent.disputesReceived(disputes)),
    );
    
    emit(state);
  }

  void _onWatchDispute(WatchDispute event, Emitter<DisputesState> emit) {
    _disputeStreamSubscription = _disputesRepository
      .watch(event.disputeUuid)
      .listen((dispute) => add(DisputesEvent.disputeReceived(dispute))
    );
    emit(state);
  }

  void _onDisputesReceived(DisputesReceived event, Emitter<DisputesState> emit) {
    emit(state.copyWith(disputes: event.disputes));
  }

  void _onDisputeReceived(DisputeReceived event, Emitter<DisputesState> emit) {
    emit(state.copyWith(dispute: event.dispute));
  }

  void _onVoteAgainst(VoteAgainst event, Emitter<DisputesState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(votesAgainst: state.dispute.votesAgainst + 1)));
    _onUpdate();
  }

  void _onVoteIndiferent(VoteIndiferent event, Emitter<DisputesState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(votesIndiferent: state.dispute.votesIndiferent + 1)));
    _onUpdate();
  }

  void _onVoteFavour(VoteFavour event, Emitter<DisputesState> emit) {
    emit(state.copyWith(dispute: state.dispute.copyWith(votesInFavour: state.dispute.votesAgainst + 1)));
    _onUpdate();
  }

  void _onUpdate() {
    _disputesRepository.update(state.dispute);
    emit(state);
  }
}
