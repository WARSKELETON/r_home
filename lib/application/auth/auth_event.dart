part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authRequest() = AuthRequest;
  const factory AuthEvent.signedOut() = SignedOut;
  const factory AuthEvent.getDomainUser() = GetDomainUser;
  const factory AuthEvent.domainUserReceived(DomainUser user) = DomainUserReceived;
}
