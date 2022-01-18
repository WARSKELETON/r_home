import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'reward_user_event.dart';
part 'reward_user_state.dart';
part 'reward_user_bloc.freezed.dart';

class RewardUserBloc extends Bloc<RewardUserEvent, RewardUserState> {
  final IRentalsRepository _rentalsRepository;
  final IAuthFacade _authFacade;

  RewardUserBloc(this._rentalsRepository, this._authFacade) : super(RewardUserState.initial()) {
    on<Initialize>(_onInitialize);
    on<RewardGuest>(_onRewardGuest);
    on<RewardAmount>(_onRewardAmount);
    on<UsernamesReceived>(_onUsernamesReceived);
    on<Submit>(_onSubmit);
  }

  StreamSubscription<List<Rental>>? _rentalsStreamSubscription;
  
  void _onInitialize(Initialize event, Emitter<RewardUserState> emit) {
    _rentalsStreamSubscription = _rentalsRepository.watchAllWhereUserIsInvolved().listen(
      (rentals) => add(RewardUserEvent.usernamesReceived(rentals))
    );
  }

  _onRewardGuest(RewardGuest event, Emitter<RewardUserState> emit) {
    emit(state.copyWith(beneficiary: event.beneficiary));
  }

  _onRewardAmount(RewardAmount event, Emitter<RewardUserState> emit) {
    emit(state.copyWith(amount: event.amount));
  }

  _onUsernamesReceived(UsernamesReceived event, Emitter<RewardUserState> emit) async {
    final userUuids = <String>{...event.rentals.map((rental) => rental.hostId), ...event.rentals.map((rental) => rental.guestId)};
    final users = await Future.wait(userUuids.map((userUuid) async => (await _rentalsRepository.getUserById(userUuid))).toList());

    emit(state.copyWith(users: users));
  }

  _onSubmit(Submit event, Emitter<RewardUserState> emit) {
    _authFacade.makeTransferOfTokens(state.beneficiary.id, state.amount);
  }

  @override
  Future<void> close() {
    _rentalsStreamSubscription?.cancel();
    return super.close();
  }
}
