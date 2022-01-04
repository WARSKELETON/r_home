part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required DomainUser user,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
    user: DomainUser.empty(),
  );
}
