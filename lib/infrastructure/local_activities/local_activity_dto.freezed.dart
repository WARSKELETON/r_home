// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_activity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalActivityDto _$LocalActivityDtoFromJson(Map<String, dynamic> json) {
  return _LocalActivityDto.fromJson(json);
}

/// @nodoc
class _$LocalActivityDtoTearOff {
  const _$LocalActivityDtoTearOff();

  _LocalActivityDto call(
      {required String uuid,
      required String name,
      required String location,
      required String producer,
      required String category,
      required double price,
      required int contact,
      required String mainImageUrl}) {
    return _LocalActivityDto(
      uuid: uuid,
      name: name,
      location: location,
      producer: producer,
      category: category,
      price: price,
      contact: contact,
      mainImageUrl: mainImageUrl,
    );
  }

  LocalActivityDto fromJson(Map<String, Object?> json) {
    return LocalActivityDto.fromJson(json);
  }
}

/// @nodoc
const $LocalActivityDto = _$LocalActivityDtoTearOff();

/// @nodoc
mixin _$LocalActivityDto {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get contact => throw _privateConstructorUsedError;
  String get mainImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalActivityDtoCopyWith<LocalActivityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalActivityDtoCopyWith<$Res> {
  factory $LocalActivityDtoCopyWith(
          LocalActivityDto value, $Res Function(LocalActivityDto) then) =
      _$LocalActivityDtoCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String name,
      String location,
      String producer,
      String category,
      double price,
      int contact,
      String mainImageUrl});
}

/// @nodoc
class _$LocalActivityDtoCopyWithImpl<$Res>
    implements $LocalActivityDtoCopyWith<$Res> {
  _$LocalActivityDtoCopyWithImpl(this._value, this._then);

  final LocalActivityDto _value;
  // ignore: unused_field
  final $Res Function(LocalActivityDto) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? producer = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? contact = freezed,
    Object? mainImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as int,
      mainImageUrl: mainImageUrl == freezed
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocalActivityDtoCopyWith<$Res>
    implements $LocalActivityDtoCopyWith<$Res> {
  factory _$LocalActivityDtoCopyWith(
          _LocalActivityDto value, $Res Function(_LocalActivityDto) then) =
      __$LocalActivityDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String name,
      String location,
      String producer,
      String category,
      double price,
      int contact,
      String mainImageUrl});
}

/// @nodoc
class __$LocalActivityDtoCopyWithImpl<$Res>
    extends _$LocalActivityDtoCopyWithImpl<$Res>
    implements _$LocalActivityDtoCopyWith<$Res> {
  __$LocalActivityDtoCopyWithImpl(
      _LocalActivityDto _value, $Res Function(_LocalActivityDto) _then)
      : super(_value, (v) => _then(v as _LocalActivityDto));

  @override
  _LocalActivityDto get _value => super._value as _LocalActivityDto;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? producer = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? contact = freezed,
    Object? mainImageUrl = freezed,
  }) {
    return _then(_LocalActivityDto(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      producer: producer == freezed
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as int,
      mainImageUrl: mainImageUrl == freezed
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalActivityDto extends _LocalActivityDto {
  const _$_LocalActivityDto(
      {required this.uuid,
      required this.name,
      required this.location,
      required this.producer,
      required this.category,
      required this.price,
      required this.contact,
      required this.mainImageUrl})
      : super._();

  factory _$_LocalActivityDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocalActivityDtoFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final String location;
  @override
  final String producer;
  @override
  final String category;
  @override
  final double price;
  @override
  final int contact;
  @override
  final String mainImageUrl;

  @override
  String toString() {
    return 'LocalActivityDto(uuid: $uuid, name: $name, location: $location, producer: $producer, category: $category, price: $price, contact: $contact, mainImageUrl: $mainImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalActivityDto &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.producer, producer) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality()
                .equals(other.mainImageUrl, mainImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(producer),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(mainImageUrl));

  @JsonKey(ignore: true)
  @override
  _$LocalActivityDtoCopyWith<_LocalActivityDto> get copyWith =>
      __$LocalActivityDtoCopyWithImpl<_LocalActivityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalActivityDtoToJson(this);
  }
}

abstract class _LocalActivityDto extends LocalActivityDto {
  const factory _LocalActivityDto(
      {required String uuid,
      required String name,
      required String location,
      required String producer,
      required String category,
      required double price,
      required int contact,
      required String mainImageUrl}) = _$_LocalActivityDto;
  const _LocalActivityDto._() : super._();

  factory _LocalActivityDto.fromJson(Map<String, dynamic> json) =
      _$_LocalActivityDto.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  String get location;
  @override
  String get producer;
  @override
  String get category;
  @override
  double get price;
  @override
  int get contact;
  @override
  String get mainImageUrl;
  @override
  @JsonKey(ignore: true)
  _$LocalActivityDtoCopyWith<_LocalActivityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
