// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      email: json['email'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      role: json['role'] as String,
      walletAddress: json['walletAddress'] as String,
      numTokens: json['numTokens'] as int,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'photo': instance.photo,
      'role': instance.role,
      'walletAddress': instance.walletAddress,
      'numTokens': instance.numTokens,
    };
