// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDto _$$_HomeDtoFromJson(Map<String, dynamic> json) => _$_HomeDto(
      name: json['name'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      host: json['host'] as String,
      price: (json['price'] as num).toDouble(),
      maxAdults: json['maxAdults'] as int,
      maxChildren: json['maxChildren'] as int,
      maxPets: json['maxPets'] as int,
      localActivities: (json['localActivities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_HomeDtoToJson(_$_HomeDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'host': instance.host,
      'price': instance.price,
      'maxAdults': instance.maxAdults,
      'maxChildren': instance.maxChildren,
      'maxPets': instance.maxPets,
      'localActivities': instance.localActivities,
    };
