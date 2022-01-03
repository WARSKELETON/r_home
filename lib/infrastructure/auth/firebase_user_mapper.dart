import 'package:firebase_auth/firebase_auth.dart';
import 'package:r_home/domain/auth/domain_user.dart';

extension FirebaseUserDomainX on User {
  DomainUser toDomain(String role) {
    return DomainUser(
      id: uid,
      email: email,
      name: displayName,
      photo: photoURL,
      role: role
    );
  }
}