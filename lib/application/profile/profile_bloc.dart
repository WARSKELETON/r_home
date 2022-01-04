import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthFacade _authFacade;

  ProfileBloc(this._authFacade) : super(ProfileState.initial()) {
    on<GetDomainUser>(_getDomainUser);
  }

  void _getDomainUser(ProfileEvent event, Emitter<ProfileState> emit) async {
    final userOption = await _authFacade.getSignedInUser();

    userOption.fold(
      () => emit(state),
      (user) => emit(state.copyWith(user: user)),
    );
  }
}
