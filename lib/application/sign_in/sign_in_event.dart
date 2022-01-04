part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  const factory SignInEvent.registerWithRole(String role) = RegisterWithRole;
}