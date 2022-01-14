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

  Initialize initialize() {
    return const Initialize();
  }

  RewardGuest rewardGuest(DomainUser beneficiary) {
    return RewardGuest(
      beneficiary,
    );
  }

  RewardAmount changeRewardAmount(double amount) {
    return RewardAmount(
      amount,
    );
  }

  UsernamesReceived usernamesReceived(List<Rental> rentals) {
    return UsernamesReceived(
      rentals,
    );
  }

  Submit sendTokens() {
    return const Submit();
  }
}

/// @nodoc
const $RewardUserEvent = _$RewardUserEventTearOff();

/// @nodoc
mixin _$RewardUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(DomainUser beneficiary) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
    required TResult Function(List<Rental> rentals) usernamesReceived,
    required TResult Function() sendTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RewardGuest value) rewardGuest,
    required TResult Function(RewardAmount value) changeRewardAmount,
    required TResult Function(UsernamesReceived value) usernamesReceived,
    required TResult Function(Submit value) sendTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
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
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$RewardUserEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'RewardUserEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(DomainUser beneficiary) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
    required TResult Function(List<Rental> rentals) usernamesReceived,
    required TResult Function() sendTokens,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RewardGuest value) rewardGuest,
    required TResult Function(RewardAmount value) changeRewardAmount,
    required TResult Function(UsernamesReceived value) usernamesReceived,
    required TResult Function(Submit value) sendTokens,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements RewardUserEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $RewardGuestCopyWith<$Res> {
  factory $RewardGuestCopyWith(
          RewardGuest value, $Res Function(RewardGuest) then) =
      _$RewardGuestCopyWithImpl<$Res>;
  $Res call({DomainUser beneficiary});

  $DomainUserCopyWith<$Res> get beneficiary;
}

/// @nodoc
class _$RewardGuestCopyWithImpl<$Res>
    extends _$RewardUserEventCopyWithImpl<$Res>
    implements $RewardGuestCopyWith<$Res> {
  _$RewardGuestCopyWithImpl(
      RewardGuest _value, $Res Function(RewardGuest) _then)
      : super(_value, (v) => _then(v as RewardGuest));

  @override
  RewardGuest get _value => super._value as RewardGuest;

  @override
  $Res call({
    Object? beneficiary = freezed,
  }) {
    return _then(RewardGuest(
      beneficiary == freezed
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as DomainUser,
    ));
  }

  @override
  $DomainUserCopyWith<$Res> get beneficiary {
    return $DomainUserCopyWith<$Res>(_value.beneficiary, (value) {
      return _then(_value.copyWith(beneficiary: value));
    });
  }
}

/// @nodoc

class _$RewardGuest implements RewardGuest {
  const _$RewardGuest(this.beneficiary);

  @override
  final DomainUser beneficiary;

  @override
  String toString() {
    return 'RewardUserEvent.rewardGuest(beneficiary: $beneficiary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RewardGuest &&
            const DeepCollectionEquality()
                .equals(other.beneficiary, beneficiary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(beneficiary));

  @JsonKey(ignore: true)
  @override
  $RewardGuestCopyWith<RewardGuest> get copyWith =>
      _$RewardGuestCopyWithImpl<RewardGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(DomainUser beneficiary) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
    required TResult Function(List<Rental> rentals) usernamesReceived,
    required TResult Function() sendTokens,
  }) {
    return rewardGuest(beneficiary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
  }) {
    return rewardGuest?.call(beneficiary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
    required TResult orElse(),
  }) {
    if (rewardGuest != null) {
      return rewardGuest(beneficiary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RewardGuest value) rewardGuest,
    required TResult Function(RewardAmount value) changeRewardAmount,
    required TResult Function(UsernamesReceived value) usernamesReceived,
    required TResult Function(Submit value) sendTokens,
  }) {
    return rewardGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
  }) {
    return rewardGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
    required TResult orElse(),
  }) {
    if (rewardGuest != null) {
      return rewardGuest(this);
    }
    return orElse();
  }
}

abstract class RewardGuest implements RewardUserEvent {
  const factory RewardGuest(DomainUser beneficiary) = _$RewardGuest;

  DomainUser get beneficiary;
  @JsonKey(ignore: true)
  $RewardGuestCopyWith<RewardGuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardAmountCopyWith<$Res> {
  factory $RewardAmountCopyWith(
          RewardAmount value, $Res Function(RewardAmount) then) =
      _$RewardAmountCopyWithImpl<$Res>;
  $Res call({double amount});
}

/// @nodoc
class _$RewardAmountCopyWithImpl<$Res>
    extends _$RewardUserEventCopyWithImpl<$Res>
    implements $RewardAmountCopyWith<$Res> {
  _$RewardAmountCopyWithImpl(
      RewardAmount _value, $Res Function(RewardAmount) _then)
      : super(_value, (v) => _then(v as RewardAmount));

  @override
  RewardAmount get _value => super._value as RewardAmount;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(RewardAmount(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RewardAmount implements RewardAmount {
  const _$RewardAmount(this.amount);

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
            other is RewardAmount &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  $RewardAmountCopyWith<RewardAmount> get copyWith =>
      _$RewardAmountCopyWithImpl<RewardAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(DomainUser beneficiary) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
    required TResult Function(List<Rental> rentals) usernamesReceived,
    required TResult Function() sendTokens,
  }) {
    return changeRewardAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
  }) {
    return changeRewardAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
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
    required TResult Function(Initialize value) initialize,
    required TResult Function(RewardGuest value) rewardGuest,
    required TResult Function(RewardAmount value) changeRewardAmount,
    required TResult Function(UsernamesReceived value) usernamesReceived,
    required TResult Function(Submit value) sendTokens,
  }) {
    return changeRewardAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
  }) {
    return changeRewardAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
    required TResult orElse(),
  }) {
    if (changeRewardAmount != null) {
      return changeRewardAmount(this);
    }
    return orElse();
  }
}

abstract class RewardAmount implements RewardUserEvent {
  const factory RewardAmount(double amount) = _$RewardAmount;

  double get amount;
  @JsonKey(ignore: true)
  $RewardAmountCopyWith<RewardAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernamesReceivedCopyWith<$Res> {
  factory $UsernamesReceivedCopyWith(
          UsernamesReceived value, $Res Function(UsernamesReceived) then) =
      _$UsernamesReceivedCopyWithImpl<$Res>;
  $Res call({List<Rental> rentals});
}

/// @nodoc
class _$UsernamesReceivedCopyWithImpl<$Res>
    extends _$RewardUserEventCopyWithImpl<$Res>
    implements $UsernamesReceivedCopyWith<$Res> {
  _$UsernamesReceivedCopyWithImpl(
      UsernamesReceived _value, $Res Function(UsernamesReceived) _then)
      : super(_value, (v) => _then(v as UsernamesReceived));

  @override
  UsernamesReceived get _value => super._value as UsernamesReceived;

  @override
  $Res call({
    Object? rentals = freezed,
  }) {
    return _then(UsernamesReceived(
      rentals == freezed
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>,
    ));
  }
}

/// @nodoc

class _$UsernamesReceived implements UsernamesReceived {
  const _$UsernamesReceived(this.rentals);

  @override
  final List<Rental> rentals;

  @override
  String toString() {
    return 'RewardUserEvent.usernamesReceived(rentals: $rentals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsernamesReceived &&
            const DeepCollectionEquality().equals(other.rentals, rentals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rentals));

  @JsonKey(ignore: true)
  @override
  $UsernamesReceivedCopyWith<UsernamesReceived> get copyWith =>
      _$UsernamesReceivedCopyWithImpl<UsernamesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(DomainUser beneficiary) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
    required TResult Function(List<Rental> rentals) usernamesReceived,
    required TResult Function() sendTokens,
  }) {
    return usernamesReceived(rentals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
  }) {
    return usernamesReceived?.call(rentals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
    required TResult orElse(),
  }) {
    if (usernamesReceived != null) {
      return usernamesReceived(rentals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RewardGuest value) rewardGuest,
    required TResult Function(RewardAmount value) changeRewardAmount,
    required TResult Function(UsernamesReceived value) usernamesReceived,
    required TResult Function(Submit value) sendTokens,
  }) {
    return usernamesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
  }) {
    return usernamesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
    required TResult orElse(),
  }) {
    if (usernamesReceived != null) {
      return usernamesReceived(this);
    }
    return orElse();
  }
}

abstract class UsernamesReceived implements RewardUserEvent {
  const factory UsernamesReceived(List<Rental> rentals) = _$UsernamesReceived;

  List<Rental> get rentals;
  @JsonKey(ignore: true)
  $UsernamesReceivedCopyWith<UsernamesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res> extends _$RewardUserEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;
}

/// @nodoc

class _$Submit implements Submit {
  const _$Submit();

  @override
  String toString() {
    return 'RewardUserEvent.sendTokens()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(DomainUser beneficiary) rewardGuest,
    required TResult Function(double amount) changeRewardAmount,
    required TResult Function(List<Rental> rentals) usernamesReceived,
    required TResult Function() sendTokens,
  }) {
    return sendTokens();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
  }) {
    return sendTokens?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(DomainUser beneficiary)? rewardGuest,
    TResult Function(double amount)? changeRewardAmount,
    TResult Function(List<Rental> rentals)? usernamesReceived,
    TResult Function()? sendTokens,
    required TResult orElse(),
  }) {
    if (sendTokens != null) {
      return sendTokens();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RewardGuest value) rewardGuest,
    required TResult Function(RewardAmount value) changeRewardAmount,
    required TResult Function(UsernamesReceived value) usernamesReceived,
    required TResult Function(Submit value) sendTokens,
  }) {
    return sendTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
  }) {
    return sendTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RewardGuest value)? rewardGuest,
    TResult Function(RewardAmount value)? changeRewardAmount,
    TResult Function(UsernamesReceived value)? usernamesReceived,
    TResult Function(Submit value)? sendTokens,
    required TResult orElse(),
  }) {
    if (sendTokens != null) {
      return sendTokens(this);
    }
    return orElse();
  }
}

abstract class Submit implements RewardUserEvent {
  const factory Submit() = _$Submit;
}

/// @nodoc
class _$RewardUserStateTearOff {
  const _$RewardUserStateTearOff();

  _RewardUserState call(
      {required DomainUser beneficiary,
      required double amount,
      required List<DomainUser> users}) {
    return _RewardUserState(
      beneficiary: beneficiary,
      amount: amount,
      users: users,
    );
  }
}

/// @nodoc
const $RewardUserState = _$RewardUserStateTearOff();

/// @nodoc
mixin _$RewardUserState {
  DomainUser get beneficiary => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  List<DomainUser> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardUserStateCopyWith<RewardUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardUserStateCopyWith<$Res> {
  factory $RewardUserStateCopyWith(
          RewardUserState value, $Res Function(RewardUserState) then) =
      _$RewardUserStateCopyWithImpl<$Res>;
  $Res call({DomainUser beneficiary, double amount, List<DomainUser> users});

  $DomainUserCopyWith<$Res> get beneficiary;
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
    Object? beneficiary = freezed,
    Object? amount = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      beneficiary: beneficiary == freezed
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<DomainUser>,
    ));
  }

  @override
  $DomainUserCopyWith<$Res> get beneficiary {
    return $DomainUserCopyWith<$Res>(_value.beneficiary, (value) {
      return _then(_value.copyWith(beneficiary: value));
    });
  }
}

/// @nodoc
abstract class _$RewardUserStateCopyWith<$Res>
    implements $RewardUserStateCopyWith<$Res> {
  factory _$RewardUserStateCopyWith(
          _RewardUserState value, $Res Function(_RewardUserState) then) =
      __$RewardUserStateCopyWithImpl<$Res>;
  @override
  $Res call({DomainUser beneficiary, double amount, List<DomainUser> users});

  @override
  $DomainUserCopyWith<$Res> get beneficiary;
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
    Object? beneficiary = freezed,
    Object? amount = freezed,
    Object? users = freezed,
  }) {
    return _then(_RewardUserState(
      beneficiary: beneficiary == freezed
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<DomainUser>,
    ));
  }
}

/// @nodoc

class _$_RewardUserState implements _RewardUserState {
  const _$_RewardUserState(
      {required this.beneficiary, required this.amount, required this.users});

  @override
  final DomainUser beneficiary;
  @override
  final double amount;
  @override
  final List<DomainUser> users;

  @override
  String toString() {
    return 'RewardUserState(beneficiary: $beneficiary, amount: $amount, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardUserState &&
            const DeepCollectionEquality()
                .equals(other.beneficiary, beneficiary) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(beneficiary),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$RewardUserStateCopyWith<_RewardUserState> get copyWith =>
      __$RewardUserStateCopyWithImpl<_RewardUserState>(this, _$identity);
}

abstract class _RewardUserState implements RewardUserState {
  const factory _RewardUserState(
      {required DomainUser beneficiary,
      required double amount,
      required List<DomainUser> users}) = _$_RewardUserState;

  @override
  DomainUser get beneficiary;
  @override
  double get amount;
  @override
  List<DomainUser> get users;
  @override
  @JsonKey(ignore: true)
  _$RewardUserStateCopyWith<_RewardUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
