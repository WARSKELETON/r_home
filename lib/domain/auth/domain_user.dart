import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_user.freezed.dart';

@freezed
abstract class DomainUser with _$DomainUser {
  const factory DomainUser({
    required String id,
    String? email,
    String? name,
    String? photo,
    required String role,  // maybe enum
    required String walletAddress,
    required int numTokens
  }) = _DomainUser;

  factory DomainUser.empty() => const DomainUser(
    id: "id",
    role: "guest",
    walletAddress: "0x",
    numTokens: 0,
  );
}
