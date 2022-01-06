// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RewardUserEventTearOff {
  const _$RewardUserEventTearOff();

  _RewardGuest rewardGuest(String guestName) {
    return _RewardGuest(
      guestName,
    );
  }

  _RewardAmount changeRewardAmount(double amount) {
    return _RewardAmount(
      amount,
    );
  }
}

/// @nodoc
const $RewardUserEvent = _$RewardUserEventTearOff();

/// @nodoc
mixin _$RewardUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String guestName) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String guestName)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String guestName)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RewardGuest value) rewardGuest,
    required TResult Function(_RewardAmount value) changeRewardAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RewardGuest value)? rewardGuest,
    TResult Function(_RewardAmount value)? changeRewardAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RewardGuest value)? rewardGuest,
    TResult Function(_RewardAmount value)? changeRewardAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardUserEventCopyWith<$Res> {
  factory $RewardUserEventCopyWith(
          RewardUserEvent value, $Res Function(RewardUserEvent) then) =
      _$RewardUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RewardUserEventCopyWithImpl<$Res>
    implements $RewardUserEventCopyWith<$Res> {
  _$RewardUserEventCopyWithImpl(this._value, this._then);

  final RewardUserEvent _value;
  // ignore: unused_field
  final $Res Function(RewardUserEvent) _then;
}

/// @nodoc
abstract class _$RewardGuestCopyWith<$Res> {
  factory _$RewardGuestCopyWith(
          _RewardGuest value, $Res Function(_RewardGuest) then) =
      __$RewardGuestCopyWithImpl<$Res>;
  $Res call({String guestName});
}

/// @nodoc
class __$RewardGuestCopyWithImpl<$Res>
    extends _$RewardUserEventCopyWithImpl<$Res>
    implements _$RewardGuestCopyWith<$Res> {
  __$RewardGuestCopyWithImpl(
      _RewardGuest _value, $Res Function(_RewardGuest) _then)
      : super(_value, (v) => _then(v as _RewardGuest));

  @override
  _RewardGuest get _value => super._value as _RewardGuest;

  @override
  $Res call({
    Object? guestName = freezed,
  }) {
    return _then(_RewardGuest(
      guestName == freezed
          ? _value.guestName
          : guestName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RewardGuest implements _RewardGuest {
  const _$_RewardGuest(this.guestName);

  @override
  final String guestName;

  @override
  String toString() {
    return 'RewardUserEvent.rewardGuest(guestName: $guestName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardGuest &&
            const DeepCollectionEquality().equals(other.guestName, guestName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guestName));

  @JsonKey(ignore: true)
  @override
  _$RewardGuestCopyWith<_RewardGuest> get copyWith =>
      __$RewardGuestCopyWithImpl<_RewardGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String guestName) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
  }) {
    return rewardGuest(guestName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String guestName)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
  }) {
    return rewardGuest?.call(guestName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String guestName)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    required TResult orElse(),
  }) {
    if (rewardGuest != null) {
      return rewardGuest(guestName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RewardGuest value) rewardGuest,
    required TResult Function(_RewardAmount value) changeRewardAmount,
  }) {
    return rewardGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RewardGuest value)? rewardGuest,
    TResult Function(_RewardAmount value)? changeRewardAmount,
  }) {
    return rewardGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RewardGuest value)? rewardGuest,
    TResult Function(_RewardAmount value)? changeRewardAmount,
    required TResult orElse(),
  }) {
    if (rewardGuest != null) {
      return rewardGuest(this);
    }
    return orElse();
  }
}

abstract class _RewardGuest implements RewardUserEvent {
  const factory _RewardGuest(String guestName) = _$_RewardGuest;

  String get guestName;
  @JsonKey(ignore: true)
  _$RewardGuestCopyWith<_RewardGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RewardAmountCopyWith<$Res> {
  factory _$RewardAmountCopyWith(
          _RewardAmount value, $Res Function(_RewardAmount) then) =
      __$RewardAmountCopyWithImpl<$Res>;
  $Res call({double amount});
}

/// @nodoc
class __$RewardAmountCopyWithImpl<$Res>
    extends _$RewardUserEventCopyWithImpl<$Res>
    implements _$RewardAmountCopyWith<$Res> {
  __$RewardAmountCopyWithImpl(
      _RewardAmount _value, $Res Function(_RewardAmount) _then)
      : super(_value, (v) => _then(v as _RewardAmount));

  @override
  _RewardAmount get _value => super._value as _RewardAmount;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_RewardAmount(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_RewardAmount implements _RewardAmount {
  const _$_RewardAmount(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'RewardUserEvent.changeRewardAmount(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardAmount &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$RewardAmountCopyWith<_RewardAmount> get copyWith =>
      __$RewardAmountCopyWithImpl<_RewardAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String guestName) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
  }) {
    return changeRewardAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String guestName)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
  }) {
    return changeRewardAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String guestName)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    required TResult orElse(),
  }) {
    if (changeRewardAmount != null) {
      return changeRewardAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RewardGuest value) rewardGuest,
    required TResult Function(_RewardAmount value) changeRewardAmount,
  }) {
    return changeRewardAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RewardGuest value)? rewardGuest,
    TResult Function(_RewardAmount value)? changeRewardAmount,
  }) {
    return changeRewardAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RewardGuest value)? rewardGuest,
    TResult Function(_RewardAmount value)? changeRewardAmount,
    required TResult orElse(),
  }) {
    if (changeRewardAmount != null) {
      return changeRewardAmount(this);
    }
    return orElse();
  }
}

abstract class _RewardAmount implements RewardUserEvent {
  const factory _RewardAmount(double amount) = _$_RewardAmount;

  double get amount;
  @JsonKey(ignore: true)
  _$RewardAmountCopyWith<_RewardAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RewardUserStateTearOff {
  const _$RewardUserStateTearOff();

  _RewardUserState call({required String guestName, required double amount}) {
    return _RewardUserState(
      guestName: guestName,
      amount: amount,
    );
  }
}

/// @nodoc
const $RewardUserState = _$RewardUserStateTearOff();

/// @nodoc
mixin _$RewardUserState {
  String get guestName => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardUserStateCopyWith<RewardUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardUserStateCopyWith<$Res> {
  factory $RewardUserStateCopyWith(
          RewardUserState value, $Res Function(RewardUserState) then) =
      _$RewardUserStateCopyWithImpl<$Res>;
  $Res call({String guestName, double amount});
}

/// @nodoc
class _$RewardUserStateCopyWithImpl<$Res>
    implements $RewardUserStateCopyWith<$Res> {
  _$RewardUserStateCopyWithImpl(this._value, this._then);

  final RewardUserState _value;
  // ignore: unused_field
  final $Res Function(RewardUserState) _then;

  @override
  $Res call({
    Object? guestName = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      guestName: guestName == freezed
          ? _value.guestName
          : guestName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RewardUserStateCopyWith<$Res>
    implements $RewardUserStateCopyWith<$Res> {
  factory _$RewardUserStateCopyWith(
          _RewardUserState value, $Res Function(_RewardUserState) then) =
      __$RewardUserStateCopyWithImpl<$Res>;
  @override
  $Res call({String guestName, double amount});
}

/// @nodoc
class __$RewardUserStateCopyWithImpl<$Res>
    extends _$RewardUserStateCopyWithImpl<$Res>
    implements _$RewardUserStateCopyWith<$Res> {
  __$RewardUserStateCopyWithImpl(
      _RewardUserState _value, $Res Function(_RewardUserState) _then)
      : super(_value, (v) => _then(v as _RewardUserState));

  @override
  _RewardUserState get _value => super._value as _RewardUserState;

  @override
  $Res call({
    Object? guestName = freezed,
    Object? amount = freezed,
  }) {
    return _then(_RewardUserState(
      guestName: guestName == freezed
          ? _value.guestName
          : guestName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_RewardUserState implements _RewardUserState {
  const _$_RewardUserState({required this.guestName, required this.amount});

  @override
  final String guestName;
  @override
  final double amount;

  @override
  String toString() {
    return 'RewardUserState(guestName: $guestName, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardUserState &&
            const DeepCollectionEquality().equals(other.guestName, guestName) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(guestName),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$RewardUserStateCopyWith<_RewardUserState> get copyWith =>
      __$RewardUserStateCopyWithImpl<_RewardUserState>(this, _$identity);
}

abstract class _RewardUserState implements RewardUserState {
  const factory _RewardUserState(
      {required String guestName, required double amount}) = _$_RewardUserState;

  @override
  String get guestName;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$RewardUserStateCopyWith<_RewardUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
