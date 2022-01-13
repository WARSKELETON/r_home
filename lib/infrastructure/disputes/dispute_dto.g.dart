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
      isOpened: json['isOpened'] as bool,
      votesAgainst: json['votesAgainst'] as int,
      votesIrrelevant: json['votesIrrelevant'] as int,
      votesInFavour: json['votesInFavour'] as int,
      initialStake: (json['initialStake'] as num).toDouble(),
      stake: (json['stake'] as num).toDouble(),
      category: json['category'] as String,
      usersVoted: (json['usersVoted'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      creationDate: firestoreTimestampFromJson(json['creationDate']),
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
      'isOpened': instance.isOpened,
      'votesAgainst': instance.votesAgainst,
      'votesIrrelevant': instance.votesIrrelevant,
      'votesInFavour': instance.votesInFavour,
      'initialStake': instance.initialStake,
      'stake': instance.stake,
      'category': instance.category,
      'usersVoted': instance.usersVoted,
      'creationDate': firestoreTimestampToJson(instance.creationDate),
    };
