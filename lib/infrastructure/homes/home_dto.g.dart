// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDto _$$_HomeDtoFromJson(Map<String, dynamic> json) => _$_HomeDto(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      host: json['host'] as String,
      price: (json['price'] as num).toDouble(),
      maxAdults: json['maxAdults'] as int,
      maxChildren: json['maxChildren'] as int,
      maxPets: json['maxPets'] as int,
      localActivities: (json['localActivities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mainImageUrl: json['mainImageUrl'] as String,
    );

Map<String, dynamic> _$$_HomeDtoToJson(_$_HomeDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'location': instance.location,
      'host': instance.host,
      'price': instance.price,
      'maxAdults': instance.maxAdults,
      'maxChildren': instance.maxChildren,
      'maxPets': instance.maxPets,
      'localActivities': instance.localActivities,
      'mainImageUrl': instance.mainImageUrl,
    };
