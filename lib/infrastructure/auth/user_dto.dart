import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto(
      {required String id,
    String? email,
    String? name,
    String? photo,
    required String role,  // maybe enum
    required String walletAddress,
    required int numTokens}) = _UserDto;

  factory UserDto.fromDomain(DomainUser user) {
    return UserDto(
        id: user.id,
        email: user.email,
        name: user.name,
        photo: user.photo,
        role: user.role,
        walletAddress: user.walletAddress,
        numTokens: user.numTokens);
  }

  DomainUser toDomain() {
    return DomainUser(
        id: id,
        email: email,
        name: name,
        photo: photo,
        role: role,
        walletAddress: walletAddress,
        numTokens: numTokens);
  }

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
