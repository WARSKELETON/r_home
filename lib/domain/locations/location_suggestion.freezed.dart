// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationSuggestionTearOff {
  const _$LocationSuggestionTearOff();

  _LocationSuggestion call({required String placeId, required String desc}) {
    return _LocationSuggestion(
      placeId: placeId,
      desc: desc,
    );
  }
}

/// @nodoc
const $LocationSuggestion = _$LocationSuggestionTearOff();

/// @nodoc
mixin _$LocationSuggestion {
  String get placeId => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationSuggestionCopyWith<LocationSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSuggestionCopyWith<$Res> {
  factory $LocationSuggestionCopyWith(
          LocationSuggestion value, $Res Function(LocationSuggestion) then) =
      _$LocationSuggestionCopyWithImpl<$Res>;
  $Res call({String placeId, String desc});
}

/// @nodoc
class _$LocationSuggestionCopyWithImpl<$Res>
    implements $LocationSuggestionCopyWith<$Res> {
  _$LocationSuggestionCopyWithImpl(this._value, this._then);

  final LocationSuggestion _value;
  // ignore: unused_field
  final $Res Function(LocationSuggestion) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationSuggestionCopyWith<$Res>
    implements $LocationSuggestionCopyWith<$Res> {
  factory _$LocationSuggestionCopyWith(
          _LocationSuggestion value, $Res Function(_LocationSuggestion) then) =
      __$LocationSuggestionCopyWithImpl<$Res>;
  @override
  $Res call({String placeId, String desc});
}

/// @nodoc
class __$LocationSuggestionCopyWithImpl<$Res>
    extends _$LocationSuggestionCopyWithImpl<$Res>
    implements _$LocationSuggestionCopyWith<$Res> {
  __$LocationSuggestionCopyWithImpl(
      _LocationSuggestion _value, $Res Function(_LocationSuggestion) _then)
      : super(_value, (v) => _then(v as _LocationSuggestion));

  @override
  _LocationSuggestion get _value => super._value as _LocationSuggestion;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? desc = freezed,
  }) {
    return _then(_LocationSuggestion(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationSuggestion extends _LocationSuggestion {
  const _$_LocationSuggestion({required this.placeId, required this.desc})
      : super._();

  @override
  final String placeId;
  @override
  final String desc;

  @override
  String toString() {
    return 'LocationSuggestion(placeId: $placeId, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationSuggestion &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.desc, desc));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(desc));

  @JsonKey(ignore: true)
  @override
  _$LocationSuggestionCopyWith<_LocationSuggestion> get copyWith =>
      __$LocationSuggestionCopyWithImpl<_LocationSuggestion>(this, _$identity);
}

abstract class _LocationSuggestion extends LocationSuggestion {
  const factory _LocationSuggestion(
      {required String placeId, required String desc}) = _$_LocationSuggestion;
  const _LocationSuggestion._() : super._();

  @override
  String get placeId;
  @override
  String get desc;
  @override
  @JsonKey(ignore: true)
  _$LocationSuggestionCopyWith<_LocationSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}
