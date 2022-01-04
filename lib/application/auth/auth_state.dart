part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool authenticated,
    required DomainUser user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
    authenticated: false,
    user: DomainUser.empty(),
  );
}
