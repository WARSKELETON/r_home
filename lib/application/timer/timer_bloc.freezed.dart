// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerEventTearOff {
  const _$TimerEventTearOff();

  Initialize initialize(DateTime finishTime) {
    return Initialize(
      finishTime,
    );
  }

  TickTimer timerChanged() {
    return const TickTimer();
  }
}

/// @nodoc
const $TimerEvent = _$TimerEventTearOff();

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime finishTime) initialize,
    required TResult Function() timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime finishTime)? initialize,
    TResult Function()? timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime finishTime)? initialize,
    TResult Function()? timerChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TickTimer value) timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res> implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  final TimerEvent _value;
  // ignore: unused_field
  final $Res Function(TimerEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({DateTime finishTime});
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object? finishTime = freezed,
  }) {
    return _then(Initialize(
      finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize(this.finishTime);

  @override
  final DateTime finishTime;

  @override
  String toString() {
    return 'TimerEvent.initialize(finishTime: $finishTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialize &&
            const DeepCollectionEquality()
                .equals(other.finishTime, finishTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(finishTime));

  @JsonKey(ignore: true)
  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime finishTime) initialize,
    required TResult Function() timerChanged,
  }) {
    return initialize(finishTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime finishTime)? initialize,
    TResult Function()? timerChanged,
  }) {
    return initialize?.call(finishTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime finishTime)? initialize,
    TResult Function()? timerChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(finishTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TickTimer value) timerChanged,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerChanged,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements TimerEvent {
  const factory Initialize(DateTime finishTime) = _$Initialize;

  DateTime get finishTime;
  @JsonKey(ignore: true)
  $InitializeCopyWith<Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickTimerCopyWith<$Res> {
  factory $TickTimerCopyWith(TickTimer value, $Res Function(TickTimer) then) =
      _$TickTimerCopyWithImpl<$Res>;
}

/// @nodoc
class _$TickTimerCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements $TickTimerCopyWith<$Res> {
  _$TickTimerCopyWithImpl(TickTimer _value, $Res Function(TickTimer) _then)
      : super(_value, (v) => _then(v as TickTimer));

  @override
  TickTimer get _value => super._value as TickTimer;
}

/// @nodoc

class _$TickTimer implements TickTimer {
  const _$TickTimer();

  @override
  String toString() {
    return 'TimerEvent.timerChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TickTimer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime finishTime) initialize,
    required TResult Function() timerChanged,
  }) {
    return timerChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime finishTime)? initialize,
    TResult Function()? timerChanged,
  }) {
    return timerChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime finishTime)? initialize,
    TResult Function()? timerChanged,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TickTimer value) timerChanged,
  }) {
    return timerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerChanged,
  }) {
    return timerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerChanged,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged(this);
    }
    return orElse();
  }
}

abstract class TickTimer implements TimerEvent {
  const factory TickTimer() = _$TickTimer;
}

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  _TimerState call(
      {required DateTime finishTime, required Duration timeToEnd}) {
    return _TimerState(
      finishTime: finishTime,
      timeToEnd: timeToEnd,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  DateTime get finishTime => throw _privateConstructorUsedError;
  Duration get timeToEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call({DateTime finishTime, Duration timeToEnd});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? finishTime = freezed,
    Object? timeToEnd = freezed,
  }) {
    return _then(_value.copyWith(
      finishTime: finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeToEnd: timeToEnd == freezed
          ? _value.timeToEnd
          : timeToEnd // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$TimerStateCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateCopyWith(
          _TimerState value, $Res Function(_TimerState) then) =
      __$TimerStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime finishTime, Duration timeToEnd});
}

/// @nodoc
class __$TimerStateCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$TimerStateCopyWith<$Res> {
  __$TimerStateCopyWithImpl(
      _TimerState _value, $Res Function(_TimerState) _then)
      : super(_value, (v) => _then(v as _TimerState));

  @override
  _TimerState get _value => super._value as _TimerState;

  @override
  $Res call({
    Object? finishTime = freezed,
    Object? timeToEnd = freezed,
  }) {
    return _then(_TimerState(
      finishTime: finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeToEnd: timeToEnd == freezed
          ? _value.timeToEnd
          : timeToEnd // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerState implements _TimerState {
  const _$_TimerState({required this.finishTime, required this.timeToEnd});

  @override
  final DateTime finishTime;
  @override
  final Duration timeToEnd;

  @override
  String toString() {
    return 'TimerState(finishTime: $finishTime, timeToEnd: $timeToEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerState &&
            const DeepCollectionEquality()
                .equals(other.finishTime, finishTime) &&
            const DeepCollectionEquality().equals(other.timeToEnd, timeToEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(finishTime),
      const DeepCollectionEquality().hash(timeToEnd));

  @JsonKey(ignore: true)
  @override
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState(
      {required DateTime finishTime,
      required Duration timeToEnd}) = _$_TimerState;

  @override
  DateTime get finishTime;
  @override
  Duration get timeToEnd;
  @override
  @JsonKey(ignore: true)
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
