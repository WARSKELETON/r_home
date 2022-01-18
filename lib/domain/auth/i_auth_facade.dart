import 'package:dartz/dartz.dart';
import 'package:r_home/domain/auth/auth_failure.dart';
import 'package:r_home/domain/auth/domain_user.dart';

abstract class IAuthFacade {
  Future<Option<DomainUser>> getSignedInUser();
  Stream<DomainUser> watchSignedInUser();
  String? getSignedInUserId();
  String? getSignedInUsername();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> registerUserWithRole(String role);
  Future<DomainUser> getUserById(String userId);
  Future<void> makeTransferOfTokens(String userId2, double amount);
  Future<void> signOut();
}
