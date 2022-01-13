// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rental_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RentalDto _$RentalDtoFromJson(Map<String, dynamic> json) {
  return _RentalDto.fromJson(json);
}

/// @nodoc
class _$RentalDtoTearOff {
  const _$RentalDtoTearOff();

  _RentalDto call(
      {required String uuid,
      required String homeId,
      required String hostId,
      required String guestId,
      required String paymentMethod,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp checkIn,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp checkOut,
      required int numAdults,
      required int numChildren,
      required int numPets}) {
    return _RentalDto(
      uuid: uuid,
      homeId: homeId,
      hostId: hostId,
      guestId: guestId,
      paymentMethod: paymentMethod,
      checkIn: checkIn,
      checkOut: checkOut,
      numAdults: numAdults,
      numChildren: numChildren,
      numPets: numPets,
    );
  }

  RentalDto fromJson(Map<String, Object?> json) {
    return RentalDto.fromJson(json);
  }
}

/// @nodoc
const $RentalDto = _$RentalDtoTearOff();

/// @nodoc
mixin _$RentalDto {
  String get uuid => throw _privateConstructorUsedError;
  String get homeId => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  String get guestId => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get checkIn => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get checkOut => throw _privateConstructorUsedError;
  int get numAdults => throw _privateConstructorUsedError;
  int get numChildren => throw _privateConstructorUsedError;
  int get numPets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentalDtoCopyWith<RentalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalDtoCopyWith<$Res> {
  factory $RentalDtoCopyWith(RentalDto value, $Res Function(RentalDto) then) =
      _$RentalDtoCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String homeId,
      String hostId,
      String guestId,
      String paymentMethod,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp checkIn,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp checkOut,
      int numAdults,
      int numChildren,
      int numPets});
}

/// @nodoc
class _$RentalDtoCopyWithImpl<$Res> implements $RentalDtoCopyWith<$Res> {
  _$RentalDtoCopyWithImpl(this._value, this._then);

  final RentalDto _value;
  // ignore: unused_field
  final $Res Function(RentalDto) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? homeId = freezed,
    Object? hostId = freezed,
    Object? guestId = freezed,
    Object? paymentMethod = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? numAdults = freezed,
    Object? numChildren = freezed,
    Object? numPets = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String,
      hostId: hostId == freezed
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: guestId == freezed
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      numAdults: numAdults == freezed
          ? _value.numAdults
          : numAdults // ignore: cast_nullable_to_non_nullable
              as int,
      numChildren: numChildren == freezed
          ? _value.numChildren
          : numChildren // ignore: cast_nullable_to_non_nullable
              as int,
      numPets: numPets == freezed
          ? _value.numPets
          : numPets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RentalDtoCopyWith<$Res> implements $RentalDtoCopyWith<$Res> {
  factory _$RentalDtoCopyWith(
          _RentalDto value, $Res Function(_RentalDto) then) =
      __$RentalDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String homeId,
      String hostId,
      String guestId,
      String paymentMethod,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp checkIn,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp checkOut,
      int numAdults,
      int numChildren,
      int numPets});
}

/// @nodoc
class __$RentalDtoCopyWithImpl<$Res> extends _$RentalDtoCopyWithImpl<$Res>
    implements _$RentalDtoCopyWith<$Res> {
  __$RentalDtoCopyWithImpl(_RentalDto _value, $Res Function(_RentalDto) _then)
      : super(_value, (v) => _then(v as _RentalDto));

  @override
  _RentalDto get _value => super._value as _RentalDto;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? homeId = freezed,
    Object? hostId = freezed,
    Object? guestId = freezed,
    Object? paymentMethod = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? numAdults = freezed,
    Object? numChildren = freezed,
    Object? numPets = freezed,
  }) {
    return _then(_RentalDto(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String,
      hostId: hostId == freezed
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: guestId == freezed
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      checkIn: checkIn == freezed
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      checkOut: checkOut == freezed
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      numAdults: numAdults == freezed
          ? _value.numAdults
          : numAdults // ignore: cast_nullable_to_non_nullable
              as int,
      numChildren: numChildren == freezed
          ? _value.numChildren
          : numChildren // ignore: cast_nullable_to_non_nullable
              as int,
      numPets: numPets == freezed
          ? _value.numPets
          : numPets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RentalDto extends _RentalDto {
  const _$_RentalDto(
      {required this.uuid,
      required this.homeId,
      required this.hostId,
      required this.guestId,
      required this.paymentMethod,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required this.checkIn,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required this.checkOut,
      required this.numAdults,
      required this.numChildren,
      required this.numPets})
      : super._();

  factory _$_RentalDto.fromJson(Map<String, dynamic> json) =>
      _$$_RentalDtoFromJson(json);

  @override
  final String uuid;
  @override
  final String homeId;
  @override
  final String hostId;
  @override
  final String guestId;
  @override
  final String paymentMethod;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  final Timestamp checkIn;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  final Timestamp checkOut;
  @override
  final int numAdults;
  @override
  final int numChildren;
  @override
  final int numPets;

  @override
  String toString() {
    return 'RentalDto(uuid: $uuid, homeId: $homeId, hostId: $hostId, guestId: $guestId, paymentMethod: $paymentMethod, checkIn: $checkIn, checkOut: $checkOut, numAdults: $numAdults, numChildren: $numChildren, numPets: $numPets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RentalDto &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.homeId, homeId) &&
            const DeepCollectionEquality().equals(other.hostId, hostId) &&
            const DeepCollectionEquality().equals(other.guestId, guestId) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality().equals(other.checkIn, checkIn) &&
            const DeepCollectionEquality().equals(other.checkOut, checkOut) &&
            const DeepCollectionEquality().equals(other.numAdults, numAdults) &&
            const DeepCollectionEquality()
                .equals(other.numChildren, numChildren) &&
            const DeepCollectionEquality().equals(other.numPets, numPets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(homeId),
      const DeepCollectionEquality().hash(hostId),
      const DeepCollectionEquality().hash(guestId),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(checkIn),
      const DeepCollectionEquality().hash(checkOut),
      const DeepCollectionEquality().hash(numAdults),
      const DeepCollectionEquality().hash(numChildren),
      const DeepCollectionEquality().hash(numPets));

  @JsonKey(ignore: true)
  @override
  _$RentalDtoCopyWith<_RentalDto> get copyWith =>
      __$RentalDtoCopyWithImpl<_RentalDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RentalDtoToJson(this);
  }
}

abstract class _RentalDto extends RentalDto {
  const factory _RentalDto(
      {required String uuid,
      required String homeId,
      required String hostId,
      required String guestId,
      required String paymentMethod,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp checkIn,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp checkOut,
      required int numAdults,
      required int numChildren,
      required int numPets}) = _$_RentalDto;
  const _RentalDto._() : super._();

  factory _RentalDto.fromJson(Map<String, dynamic> json) =
      _$_RentalDto.fromJson;

  @override
  String get uuid;
  @override
  String get homeId;
  @override
  String get hostId;
  @override
  String get guestId;
  @override
  String get paymentMethod;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get checkIn;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get checkOut;
  @override
  int get numAdults;
  @override
  int get numChildren;
  @override
  int get numPets;
  @override
  @JsonKey(ignore: true)
  _$RentalDtoCopyWith<_RentalDto> get copyWith =>
      throw _privateConstructorUsedError;
}
