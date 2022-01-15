import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<AuthRequest>(_onAuthRequest);
    on<SignedOut>(_onSignedOut);
    on<GetDomainUser>(_onGetDomainUser);
    on<DomainUserReceived>(_onDomainUserReceived);
  }

  StreamSubscription<DomainUser>? _userStreamSubscription;

  void _onAuthRequest(AuthEvent event, Emitter<AuthState> emit) async {
    final userOption = await _authFacade.getSignedInUser();

    userOption.fold(
      () => emit(state.copyWith(authenticated: false)),
      (_) => emit(state.copyWith(authenticated: true)),
    );
  }

  void _onSignedOut(AuthEvent event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();

    emit(state.copyWith(authenticated: false));
  }

  void _onGetDomainUser(AuthEvent event, Emitter<AuthState> emit) async {
    _userStreamSubscription = _authFacade.watchSignedInUser().listen(
      (user) => add(AuthEvent.domainUserReceived(user)),
    );

    emit(state.copyWith(isLoading: true));
    final userOption = await _authFacade.getSignedInUser();

    userOption.fold(
      () => emit(state),
      (user) => emit(state.copyWith(user: user)),
    );
    emit(state.copyWith(isLoading: false));
  }

  void _onDomainUserReceived(DomainUserReceived event, Emitter<AuthState> emit) {
    emit(state.copyWith(user: event.user));
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}
