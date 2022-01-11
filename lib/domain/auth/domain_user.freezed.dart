// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'domain_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DomainUserTearOff {
  const _$DomainUserTearOff();

  _DomainUser call(
      {required String id,
      String? email,
      String? name,
      String? photo,
      required String role,
      required String walletAddress,
      required int numTokens}) {
    return _DomainUser(
      id: id,
      email: email,
      name: name,
      photo: photo,
      role: role,
      walletAddress: walletAddress,
      numTokens: numTokens,
    );
  }
}

/// @nodoc
const $DomainUser = _$DomainUserTearOff();

/// @nodoc
mixin _$DomainUser {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError; // maybe enum
  String get walletAddress => throw _privateConstructorUsedError;
  int get numTokens => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DomainUserCopyWith<DomainUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainUserCopyWith<$Res> {
  factory $DomainUserCopyWith(
          DomainUser value, $Res Function(DomainUser) then) =
      _$DomainUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? email,
      String? name,
      String? photo,
      String role,
      String walletAddress,
      int numTokens});
}

/// @nodoc
class _$DomainUserCopyWithImpl<$Res> implements $DomainUserCopyWith<$Res> {
  _$DomainUserCopyWithImpl(this._value, this._then);

  final DomainUser _value;
  // ignore: unused_field
  final $Res Function(DomainUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? role = freezed,
    Object? walletAddress = freezed,
    Object? numTokens = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      numTokens: numTokens == freezed
          ? _value.numTokens
          : numTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DomainUserCopyWith<$Res> implements $DomainUserCopyWith<$Res> {
  factory _$DomainUserCopyWith(
          _DomainUser value, $Res Function(_DomainUser) then) =
      __$DomainUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? email,
      String? name,
      String? photo,
      String role,
      String walletAddress,
      int numTokens});
}

/// @nodoc
class __$DomainUserCopyWithImpl<$Res> extends _$DomainUserCopyWithImpl<$Res>
    implements _$DomainUserCopyWith<$Res> {
  __$DomainUserCopyWithImpl(
      _DomainUser _value, $Res Function(_DomainUser) _then)
      : super(_value, (v) => _then(v as _DomainUser));

  @override
  _DomainUser get _value => super._value as _DomainUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? role = freezed,
    Object? walletAddress = freezed,
    Object? numTokens = freezed,
  }) {
    return _then(_DomainUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      numTokens: numTokens == freezed
          ? _value.numTokens
          : numTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DomainUser extends _DomainUser {
  const _$_DomainUser(
      {required this.id,
      this.email,
      this.name,
      this.photo,
      required this.role,
      required this.walletAddress,
      required this.numTokens})
      : super._();

  @override
  final String id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String role;
  @override // maybe enum
  final String walletAddress;
  @override
  final int numTokens;

  @override
  String toString() {
    return 'DomainUser(id: $id, email: $email, name: $name, photo: $photo, role: $role, walletAddress: $walletAddress, numTokens: $numTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DomainUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.walletAddress, walletAddress) &&
            const DeepCollectionEquality().equals(other.numTokens, numTokens));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(walletAddress),
      const DeepCollectionEquality().hash(numTokens));

  @JsonKey(ignore: true)
  @override
  _$DomainUserCopyWith<_DomainUser> get copyWith =>
      __$DomainUserCopyWithImpl<_DomainUser>(this, _$identity);
}

abstract class _DomainUser extends DomainUser {
  const factory _DomainUser(
      {required String id,
      String? email,
      String? name,
      String? photo,
      required String role,
      required String walletAddress,
      required int numTokens}) = _$_DomainUser;
  const _DomainUser._() : super._();

  @override
  String get id;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  String get role;
  @override // maybe enum
  String get walletAddress;
  @override
  int get numTokens;
  @override
  @JsonKey(ignore: true)
  _$DomainUserCopyWith<_DomainUser> get copyWith =>
      throw _privateConstructorUsedError;
}
