part of 'reward_user_bloc.dart';

@freezed
class RewardUserEvent with _$RewardUserEvent {
  const factory RewardUserEvent.initialize() = Initialize;
  const factory RewardUserEvent.rewardGuest(DomainUser beneficiary) = RewardGuest;
  const factory RewardUserEvent.changeRewardAmount(double amount) = RewardAmount;
  const factory RewardUserEvent.usernamesReceived(List<Rental> rentals) = UsernamesReceived;
  const factory RewardUserEvent.sendTokens() = Submit;
}