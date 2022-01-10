// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RentalDto _$$_RentalDtoFromJson(Map<String, dynamic> json) => _$_RentalDto(
      uuid: json['uuid'] as String,
      homeId: json['homeId'] as String,
      hostId: json['hostId'] as String,
      guestId: json['guestId'] as String,
      paymentMethod: json['paymentMethod'] as String,
      checkIn: DateTime.parse(json['checkIn'] as String),
      checkOut: DateTime.parse(json['checkOut'] as String),
      numAdults: json['numAdults'] as int,
      numChildren: json['numChildren'] as int,
      numPets: json['numPets'] as int,
    );

Map<String, dynamic> _$$_RentalDtoToJson(_$_RentalDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'homeId': instance.homeId,
      'hostId': instance.hostId,
      'guestId': instance.guestId,
      'paymentMethod': instance.paymentMethod,
      'checkIn': instance.checkIn.toIso8601String(),
      'checkOut': instance.checkOut.toIso8601String(),
      'numAdults': instance.numAdults,
      'numChildren': instance.numChildren,
      'numPets': instance.numPets,
    };
