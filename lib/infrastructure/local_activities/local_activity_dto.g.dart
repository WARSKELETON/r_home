// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_activity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalActivityDto _$$_LocalActivityDtoFromJson(Map<String, dynamic> json) =>
    _$_LocalActivityDto(
      name: json['name'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      producer: json['producer'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toDouble(),
      contact: json['contact'] as int,
    );

Map<String, dynamic> _$$_LocalActivityDtoToJson(_$_LocalActivityDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'producer': instance.producer,
      'category': instance.category,
      'price': instance.price,
      'contact': instance.contact,
    };