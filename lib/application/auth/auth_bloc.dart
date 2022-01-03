import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthRequest>(_onAuthRequest);
    on<SignedOut>(_onSignedOut);
  }

  void _onAuthRequest(AuthEvent event, Emitter<AuthState> emit) {
    final userOption = _authFacade.getSignedInUser();

    userOption.fold(
      () => emit(const AuthState.unauthenticated()),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  void _onSignedOut(AuthEvent event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();

    emit(const AuthState.unauthenticated());
  }
}
