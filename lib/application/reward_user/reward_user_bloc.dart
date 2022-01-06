import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_user_event.dart';
part 'reward_user_state.dart';
part 'reward_user_bloc.freezed.dart';

class RewardUserBloc extends Bloc<RewardUserEvent, RewardUserState> {
  RewardUserBloc() : super(RewardUserState.initial()) {
    on<_RewardGuest>(_rewardGuest);
    on<_RewardAmount>(_rewardAmount);
  }
  
  _rewardGuest(_RewardGuest event, Emitter<RewardUserState> emit) {
    emit(state.copyWith(guestName: event.guestName));
  }

  _rewardAmount(_RewardAmount event, Emitter<RewardUserState> emit) {
    emit(state.copyWith(amount: event.amount));
  }
}
