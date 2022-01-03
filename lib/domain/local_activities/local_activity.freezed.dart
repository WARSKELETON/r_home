// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalActivityTearOff {
  const _$LocalActivityTearOff();

  _LocalActivity call(
      {required String name,
      required String location,
      required String description,
      required String producer,
      required String category,
      required double price,
      required int contact}) {
    return _LocalActivity(
      name: name,
      location: location,
      description: description,
      producer: producer,
      category: category,
      price: price,
      contact: contact,
    );
  }
}

/// @nodoc
const $LocalActivity = _$LocalActivityTearOff();

/// @nodoc
mixin _$LocalActivity {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError; //enum?
  double get price => throw _privateConstructorUsedError;
  int get contact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalActivityCopyWith<LocalActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalActivityCopyWith<$Res> {
  factory $LocalActivityCopyWith(
          LocalActivity value, $Res Function(LocalActivity) then) =
      _$LocalActivityCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String location,
      String description,
      String producer,
      String category,
      double price,
      int contact});
}

/// @nodoc
class _$LocalActivityCopyWithImpl<$Res>
    implements $LocalActivityCopyWith<$Res> {
  _$LocalActivityCopyWithImpl(this._value, this._then);

  final LocalActivity _value;
  // ignore: unused_field
  final $Res Function(LocalActivity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? producer = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$LocalActivityCopyWith<$Res>
    implements $LocalActivityCopyWith<$Res> {
  factory _$LocalActivityCopyWith(
          _LocalActivity value, $Res Function(_LocalActivity) then) =
      __$LocalActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String location,
      String description,
      String producer,
      String category,
      double price,
      int contact});
}

/// @nodoc
class __$LocalActivityCopyWithImpl<$Res>
    extends _$LocalActivityCopyWithImpl<$Res>
    implements _$LocalActivityCopyWith<$Res> {
  __$LocalActivityCopyWithImpl(
      _LocalActivity _value, $Res Function(_LocalActivity) _then)
      : super(_value, (v) => _then(v as _LocalActivity));

  @override
  _LocalActivity get _value => super._value as _LocalActivity;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? producer = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? contact = freezed,
  }) {
    return _then(_LocalActivity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$_LocalActivity extends _LocalActivity {
  const _$_LocalActivity(
      {required this.name,
      required this.location,
      required this.description,
      required this.producer,
      required this.category,
      required this.price,
      required this.contact})
      : super._();

  @override
  final String name;
  @override
  final String location;
  @override
  final String description;
  @override
  final String producer;
  @override
  final String category;
  @override //enum?
  final double price;
  @override
  final int contact;

  @override
  String toString() {
    return 'LocalActivity(name: $name, location: $location, description: $description, producer: $producer, category: $category, price: $price, contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalActivity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.producer, producer) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(producer),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  _$LocalActivityCopyWith<_LocalActivity> get copyWith =>
      __$LocalActivityCopyWithImpl<_LocalActivity>(this, _$identity);
}

abstract class _LocalActivity extends LocalActivity {
  const factory _LocalActivity(
      {required String name,
      required String location,
      required String description,
      required String producer,
      required String category,
      required double price,
      required int contact}) = _$_LocalActivity;
  const _LocalActivity._() : super._();

  @override
  String get name;
  @override
  String get location;
  @override
  String get description;
  @override
  String get producer;
  @override
  String get category;
  @override //enum?
  double get price;
  @override
  int get contact;
  @override
  @JsonKey(ignore: true)
  _$LocalActivityCopyWith<_LocalActivity> get copyWith =>
      throw _privateConstructorUsedError;
}
