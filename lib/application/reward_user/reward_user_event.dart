part of 'reward_user_bloc.dart';

@freezed
class RewardUserEvent with _$RewardUserEvent {
  const factory RewardUserEvent.rewardGuest(String guestName) = _RewardGuest;
  const factory RewardUserEvent.changeRewardAmount(double amount) = _RewardAmount;
}