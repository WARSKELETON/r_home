import 'package:dartz/dartz.dart';
import 'package:r_home/domain/auth/auth_failure.dart';
import 'package:r_home/domain/auth/domain_user.dart';

abstract class IAuthFacade {
  Option<DomainUser> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
