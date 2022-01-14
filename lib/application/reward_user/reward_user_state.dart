part of 'reward_user_bloc.dart';

@freezed
class RewardUserState with _$RewardUserState {
  const factory RewardUserState({
    required DomainUser beneficiary,
    required double amount,
    required List<DomainUser> users
  }) = _RewardUserState;

  factory RewardUserState.initial() => RewardUserState(beneficiary: DomainUser.empty(), amount: 0, users: []);
}
