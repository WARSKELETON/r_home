// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DisputeDto _$$_DisputeDtoFromJson(Map<String, dynamic> json) =>
    _$_DisputeDto(
      uuid: json['uuid'] as String,
      issuerUuid: json['issuerUuid'] as String,
      title: json['title'] as String,
      descritption: json['descritption'] as String,
      homeUuid: json['homeUuid'] as String,
      isOpened: json['isOpened'] as bool,
      votesAgainst: json['votesAgainst'] as int,
      votesInsignificant: json['votesInsignificant'] as int,
      votesInFavour: json['votesInFavour'] as int,
      initialStake: json['initialStake'] as int,
      stake: json['stake'] as int,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_DisputeDtoToJson(_$_DisputeDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'issuerUuid': instance.issuerUuid,
      'title': instance.title,
      'descritption': instance.descritption,
      'homeUuid': instance.homeUuid,
      'isOpened': instance.isOpened,
      'votesAgainst': instance.votesAgainst,
      'votesInsignificant': instance.votesInsignificant,
      'votesInFavour': instance.votesInFavour,
      'initialStake': instance.initialStake,
      'stake': instance.stake,
      'category': instance.category,
    };
