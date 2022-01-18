// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DisputeDto _$$_DisputeDtoFromJson(Map<String, dynamic> json) =>
    _$_DisputeDto(
      uuid: json['uuid'] as String,
      issuerUuid: json['issuerUuid'] as String,
      issuerUsername: json['issuerUsername'] as String,
      title: json['title'] as String,
      descritption: json['descritption'] as String,
      homeUuid: json['homeUuid'] as String,
      rentalUuid: json['rentalUuid'] as String,
      initialStake: (json['initialStake'] as num).toDouble(),
      category: json['category'] as String,
      creationDate: firestoreTimestampFromJson(json['creationDate']),
      mainImageUrl: json['mainImageUrl'] as String,
      usersVotedInFavour: (json['usersVotedInFavour'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      usersVotedIrrelevent: (json['usersVotedIrrelevent'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      usersVotedAgainst: (json['usersVotedAgainst'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_DisputeDtoToJson(_$_DisputeDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'issuerUuid': instance.issuerUuid,
      'issuerUsername': instance.issuerUsername,
      'title': instance.title,
      'descritption': instance.descritption,
      'homeUuid': instance.homeUuid,
      'rentalUuid': instance.rentalUuid,
      'initialStake': instance.initialStake,
      'category': instance.category,
      'creationDate': firestoreTimestampToJson(instance.creationDate),
      'mainImageUrl': instance.mainImageUrl,
      'usersVotedInFavour': instance.usersVotedInFavour,
      'usersVotedIrrelevent': instance.usersVotedIrrelevent,
      'usersVotedAgainst': instance.usersVotedAgainst,
    };
