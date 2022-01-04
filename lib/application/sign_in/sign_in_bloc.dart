import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/auth_failure.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<SignInWithGooglePressed>(_onSignInWithGooglePressed);
    on<RegisterWithRole>(_registerWithRole);
  }

  void _onSignInWithGooglePressed(SignInEvent event, Emitter<SignInState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  void _registerWithRole(RegisterWithRole event, Emitter<SignInState> emit) async {
    final role = event.role;
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authFacade.registerUserWithRole(role);
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }
}
