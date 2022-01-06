part of 'reward_user_bloc.dart';

@freezed
class RewardUserState with _$RewardUserState {
  const factory RewardUserState({
    required String guestName,
    required double amount,
  }) = _RewardUserState;

  factory RewardUserState.initial() => const RewardUserState(guestName: "", amount: 0);
}
