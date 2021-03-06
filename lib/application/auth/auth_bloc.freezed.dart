// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthRequest authRequest() {
    return const AuthRequest();
  }

  SignedOut signedOut() {
    return const SignedOut();
  }

  GetDomainUser getDomainUser() {
    return const GetDomainUser();
  }

  DomainUserReceived domainUserReceived(DomainUser user) {
    return DomainUserReceived(
      user,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequest,
    required TResult Function() signedOut,
    required TResult Function() getDomainUser,
    required TResult Function(DomainUser user) domainUserReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) authRequest,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(GetDomainUser value) getDomainUser,
    required TResult Function(DomainUserReceived value) domainUserReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthRequestCopyWith<$Res> {
  factory $AuthRequestCopyWith(
          AuthRequest value, $Res Function(AuthRequest) then) =
      _$AuthRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthRequestCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(
      AuthRequest _value, $Res Function(AuthRequest) _then)
      : super(_value, (v) => _then(v as AuthRequest));

  @override
  AuthRequest get _value => super._value as AuthRequest;
}

/// @nodoc

class _$AuthRequest implements AuthRequest {
  const _$AuthRequest();

  @override
  String toString() {
    return 'AuthEvent.authRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequest,
    required TResult Function() signedOut,
    required TResult Function() getDomainUser,
    required TResult Function(DomainUser user) domainUserReceived,
  }) {
    return authRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
  }) {
    return authRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (authRequest != null) {
      return authRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) authRequest,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(GetDomainUser value) getDomainUser,
    required TResult Function(DomainUserReceived value) domainUserReceived,
  }) {
    return authRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
  }) {
    return authRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (authRequest != null) {
      return authRequest(this);
    }
    return orElse();
  }
}

abstract class AuthRequest implements AuthEvent {
  const factory AuthRequest() = _$AuthRequest;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequest,
    required TResult Function() signedOut,
    required TResult Function() getDomainUser,
    required TResult Function(DomainUser user) domainUserReceived,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) authRequest,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(GetDomainUser value) getDomainUser,
    required TResult Function(DomainUserReceived value) domainUserReceived,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class $GetDomainUserCopyWith<$Res> {
  factory $GetDomainUserCopyWith(
          GetDomainUser value, $Res Function(GetDomainUser) then) =
      _$GetDomainUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetDomainUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $GetDomainUserCopyWith<$Res> {
  _$GetDomainUserCopyWithImpl(
      GetDomainUser _value, $Res Function(GetDomainUser) _then)
      : super(_value, (v) => _then(v as GetDomainUser));

  @override
  GetDomainUser get _value => super._value as GetDomainUser;
}

/// @nodoc

class _$GetDomainUser implements GetDomainUser {
  const _$GetDomainUser();

  @override
  String toString() {
    return 'AuthEvent.getDomainUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetDomainUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequest,
    required TResult Function() signedOut,
    required TResult Function() getDomainUser,
    required TResult Function(DomainUser user) domainUserReceived,
  }) {
    return getDomainUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
  }) {
    return getDomainUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (getDomainUser != null) {
      return getDomainUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) authRequest,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(GetDomainUser value) getDomainUser,
    required TResult Function(DomainUserReceived value) domainUserReceived,
  }) {
    return getDomainUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
  }) {
    return getDomainUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (getDomainUser != null) {
      return getDomainUser(this);
    }
    return orElse();
  }
}

abstract class GetDomainUser implements AuthEvent {
  const factory GetDomainUser() = _$GetDomainUser;
}

/// @nodoc
abstract class $DomainUserReceivedCopyWith<$Res> {
  factory $DomainUserReceivedCopyWith(
          DomainUserReceived value, $Res Function(DomainUserReceived) then) =
      _$DomainUserReceivedCopyWithImpl<$Res>;
  $Res call({DomainUser user});

  $DomainUserCopyWith<$Res> get user;
}

/// @nodoc
class _$DomainUserReceivedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $DomainUserReceivedCopyWith<$Res> {
  _$DomainUserReceivedCopyWithImpl(
      DomainUserReceived _value, $Res Function(DomainUserReceived) _then)
      : super(_value, (v) => _then(v as DomainUserReceived));

  @override
  DomainUserReceived get _value => super._value as DomainUserReceived;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(DomainUserReceived(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DomainUser,
    ));
  }

  @override
  $DomainUserCopyWith<$Res> get user {
    return $DomainUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DomainUserReceived implements DomainUserReceived {
  const _$DomainUserReceived(this.user);

  @override
  final DomainUser user;

  @override
  String toString() {
    return 'AuthEvent.domainUserReceived(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DomainUserReceived &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $DomainUserReceivedCopyWith<DomainUserReceived> get copyWith =>
      _$DomainUserReceivedCopyWithImpl<DomainUserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequest,
    required TResult Function() signedOut,
    required TResult Function() getDomainUser,
    required TResult Function(DomainUser user) domainUserReceived,
  }) {
    return domainUserReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
  }) {
    return domainUserReceived?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequest,
    TResult Function()? signedOut,
    TResult Function()? getDomainUser,
    TResult Function(DomainUser user)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (domainUserReceived != null) {
      return domainUserReceived(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequest value) authRequest,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(GetDomainUser value) getDomainUser,
    required TResult Function(DomainUserReceived value) domainUserReceived,
  }) {
    return domainUserReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
  }) {
    return domainUserReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequest value)? authRequest,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(GetDomainUser value)? getDomainUser,
    TResult Function(DomainUserReceived value)? domainUserReceived,
    required TResult orElse(),
  }) {
    if (domainUserReceived != null) {
      return domainUserReceived(this);
    }
    return orElse();
  }
}

abstract class DomainUserReceived implements AuthEvent {
  const factory DomainUserReceived(DomainUser user) = _$DomainUserReceived;

  DomainUser get user;
  @JsonKey(ignore: true)
  $DomainUserReceivedCopyWith<DomainUserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required bool authenticated,
      required DomainUser user,
      required bool isLoading}) {
    return _AuthState(
      authenticated: authenticated,
      user: user,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get authenticated => throw _privateConstructorUsedError;
  DomainUser get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({bool authenticated, DomainUser user, bool isLoading});

  $DomainUserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? authenticated = freezed,
    Object? user = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $DomainUserCopyWith<$Res> get user {
    return $DomainUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call({bool authenticated, DomainUser user, bool isLoading});

  @override
  $DomainUserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? authenticated = freezed,
    Object? user = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_AuthState(
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.authenticated,
      required this.user,
      required this.isLoading});

  @override
  final bool authenticated;
  @override
  final DomainUser user;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState(authenticated: $authenticated, user: $user, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality()
                .equals(other.authenticated, authenticated) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authenticated),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required bool authenticated,
      required DomainUser user,
      required bool isLoading}) = _$_AuthState;

  @override
  bool get authenticated;
  @override
  DomainUser get user;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
