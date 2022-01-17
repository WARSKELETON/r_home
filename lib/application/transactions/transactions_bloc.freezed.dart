// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionsEventTearOff {
  const _$TransactionsEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  TransactionsReceived transactionsReceived(
      List<RhomeTransaction> transactions) {
    return TransactionsReceived(
      transactions,
    );
  }
}

/// @nodoc
const $TransactionsEvent = _$TransactionsEventTearOff();

/// @nodoc
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<RhomeTransaction> transactions)
        transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<RhomeTransaction> transactions)? transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<RhomeTransaction> transactions)? transactionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TransactionsReceived value) transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TransactionsReceived value)? transactionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TransactionsReceived value)? transactionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  final TransactionsEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionsEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
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
    return 'TransactionsEvent.initialize()';
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
    required TResult Function(List<RhomeTransaction> transactions)
        transactionsReceived,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<RhomeTransaction> transactions)? transactionsReceived,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<RhomeTransaction> transactions)? transactionsReceived,
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
    required TResult Function(TransactionsReceived value) transactionsReceived,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TransactionsReceived value)? transactionsReceived,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TransactionsReceived value)? transactionsReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements TransactionsEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $TransactionsReceivedCopyWith<$Res> {
  factory $TransactionsReceivedCopyWith(TransactionsReceived value,
          $Res Function(TransactionsReceived) then) =
      _$TransactionsReceivedCopyWithImpl<$Res>;
  $Res call({List<RhomeTransaction> transactions});
}

/// @nodoc
class _$TransactionsReceivedCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements $TransactionsReceivedCopyWith<$Res> {
  _$TransactionsReceivedCopyWithImpl(
      TransactionsReceived _value, $Res Function(TransactionsReceived) _then)
      : super(_value, (v) => _then(v as TransactionsReceived));

  @override
  TransactionsReceived get _value => super._value as TransactionsReceived;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(TransactionsReceived(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<RhomeTransaction>,
    ));
  }
}

/// @nodoc

class _$TransactionsReceived implements TransactionsReceived {
  const _$TransactionsReceived(this.transactions);

  @override
  final List<RhomeTransaction> transactions;

  @override
  String toString() {
    return 'TransactionsEvent.transactionsReceived(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionsReceived &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactions));

  @JsonKey(ignore: true)
  @override
  $TransactionsReceivedCopyWith<TransactionsReceived> get copyWith =>
      _$TransactionsReceivedCopyWithImpl<TransactionsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<RhomeTransaction> transactions)
        transactionsReceived,
  }) {
    return transactionsReceived(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<RhomeTransaction> transactions)? transactionsReceived,
  }) {
    return transactionsReceived?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<RhomeTransaction> transactions)? transactionsReceived,
    required TResult orElse(),
  }) {
    if (transactionsReceived != null) {
      return transactionsReceived(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TransactionsReceived value) transactionsReceived,
  }) {
    return transactionsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TransactionsReceived value)? transactionsReceived,
  }) {
    return transactionsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TransactionsReceived value)? transactionsReceived,
    required TResult orElse(),
  }) {
    if (transactionsReceived != null) {
      return transactionsReceived(this);
    }
    return orElse();
  }
}

abstract class TransactionsReceived implements TransactionsEvent {
  const factory TransactionsReceived(List<RhomeTransaction> transactions) =
      _$TransactionsReceived;

  List<RhomeTransaction> get transactions;
  @JsonKey(ignore: true)
  $TransactionsReceivedCopyWith<TransactionsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionsStateTearOff {
  const _$TransactionsStateTearOff();

  _TransactionsState call({required List<RhomeTransaction> transactions}) {
    return _TransactionsState(
      transactions: transactions,
    );
  }
}

/// @nodoc
const $TransactionsState = _$TransactionsStateTearOff();

/// @nodoc
mixin _$TransactionsState {
  List<RhomeTransaction> get transactions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsStateCopyWith<TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res>;
  $Res call({List<RhomeTransaction> transactions});
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  final TransactionsState _value;
  // ignore: unused_field
  final $Res Function(TransactionsState) _then;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<RhomeTransaction>,
    ));
  }
}

/// @nodoc
abstract class _$TransactionsStateCopyWith<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  factory _$TransactionsStateCopyWith(
          _TransactionsState value, $Res Function(_TransactionsState) then) =
      __$TransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<RhomeTransaction> transactions});
}

/// @nodoc
class __$TransactionsStateCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res>
    implements _$TransactionsStateCopyWith<$Res> {
  __$TransactionsStateCopyWithImpl(
      _TransactionsState _value, $Res Function(_TransactionsState) _then)
      : super(_value, (v) => _then(v as _TransactionsState));

  @override
  _TransactionsState get _value => super._value as _TransactionsState;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_TransactionsState(
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<RhomeTransaction>,
    ));
  }
}

/// @nodoc

class _$_TransactionsState implements _TransactionsState {
  _$_TransactionsState({required this.transactions});

  @override
  final List<RhomeTransaction> transactions;

  @override
  String toString() {
    return 'TransactionsState(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionsState &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactions));

  @JsonKey(ignore: true)
  @override
  _$TransactionsStateCopyWith<_TransactionsState> get copyWith =>
      __$TransactionsStateCopyWithImpl<_TransactionsState>(this, _$identity);
}

abstract class _TransactionsState implements TransactionsState {
  factory _TransactionsState({required List<RhomeTransaction> transactions}) =
      _$_TransactionsState;

  @override
  List<RhomeTransaction> get transactions;
  @override
  @JsonKey(ignore: true)
  _$TransactionsStateCopyWith<_TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
