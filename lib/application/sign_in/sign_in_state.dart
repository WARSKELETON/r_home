part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}
