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

  Initialize initialize(DateTime closingTime) {
    return Initialize(
      closingTime,
    );
  }

  TickTimer timerTicked() {
    return const TickTimer();
  }

  ChangedTimer timerChanged(DateTime closingTime) {
    return ChangedTimer(
      closingTime,
    );
  }
}

/// @nodoc
const $TimerEvent = _$TimerEventTearOff();

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime closingTime) initialize,
    required TResult Function() timerTicked,
    required TResult Function(DateTime closingTime) timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TickTimer value) timerTicked,
    required TResult Function(ChangedTimer value) timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
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
  $Res call({DateTime closingTime});
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
    Object? closingTime = freezed,
  }) {
    return _then(Initialize(
      closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize(this.closingTime);

  @override
  final DateTime closingTime;

  @override
  String toString() {
    return 'TimerEvent.initialize(closingTime: $closingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialize &&
            const DeepCollectionEquality()
                .equals(other.closingTime, closingTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(closingTime));

  @JsonKey(ignore: true)
  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime closingTime) initialize,
    required TResult Function() timerTicked,
    required TResult Function(DateTime closingTime) timerChanged,
  }) {
    return initialize(closingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
  }) {
    return initialize?.call(closingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(closingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TickTimer value) timerTicked,
    required TResult Function(ChangedTimer value) timerChanged,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements TimerEvent {
  const factory Initialize(DateTime closingTime) = _$Initialize;

  DateTime get closingTime;
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
    return 'TimerEvent.timerTicked()';
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
    required TResult Function(DateTime closingTime) initialize,
    required TResult Function() timerTicked,
    required TResult Function(DateTime closingTime) timerChanged,
  }) {
    return timerTicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
  }) {
    return timerTicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TickTimer value) timerTicked,
    required TResult Function(ChangedTimer value) timerChanged,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class TickTimer implements TimerEvent {
  const factory TickTimer() = _$TickTimer;
}

/// @nodoc
abstract class $ChangedTimerCopyWith<$Res> {
  factory $ChangedTimerCopyWith(
          ChangedTimer value, $Res Function(ChangedTimer) then) =
      _$ChangedTimerCopyWithImpl<$Res>;
  $Res call({DateTime closingTime});
}

/// @nodoc
class _$ChangedTimerCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements $ChangedTimerCopyWith<$Res> {
  _$ChangedTimerCopyWithImpl(
      ChangedTimer _value, $Res Function(ChangedTimer) _then)
      : super(_value, (v) => _then(v as ChangedTimer));

  @override
  ChangedTimer get _value => super._value as ChangedTimer;

  @override
  $Res call({
    Object? closingTime = freezed,
  }) {
    return _then(ChangedTimer(
      closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangedTimer implements ChangedTimer {
  const _$ChangedTimer(this.closingTime);

  @override
  final DateTime closingTime;

  @override
  String toString() {
    return 'TimerEvent.timerChanged(closingTime: $closingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangedTimer &&
            const DeepCollectionEquality()
                .equals(other.closingTime, closingTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(closingTime));

  @JsonKey(ignore: true)
  @override
  $ChangedTimerCopyWith<ChangedTimer> get copyWith =>
      _$ChangedTimerCopyWithImpl<ChangedTimer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime closingTime) initialize,
    required TResult Function() timerTicked,
    required TResult Function(DateTime closingTime) timerChanged,
  }) {
    return timerChanged(closingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
  }) {
    return timerChanged?.call(closingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime closingTime)? initialize,
    TResult Function()? timerTicked,
    TResult Function(DateTime closingTime)? timerChanged,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged(closingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(TickTimer value) timerTicked,
    required TResult Function(ChangedTimer value) timerChanged,
  }) {
    return timerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
  }) {
    return timerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(TickTimer value)? timerTicked,
    TResult Function(ChangedTimer value)? timerChanged,
    required TResult orElse(),
  }) {
    if (timerChanged != null) {
      return timerChanged(this);
    }
    return orElse();
  }
}

abstract class ChangedTimer implements TimerEvent {
  const factory ChangedTimer(DateTime closingTime) = _$ChangedTimer;

  DateTime get closingTime;
  @JsonKey(ignore: true)
  $ChangedTimerCopyWith<ChangedTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  _TimerState call(
      {required DateTime closingTime, required Duration timeToEnd}) {
    return _TimerState(
      closingTime: closingTime,
      timeToEnd: timeToEnd,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  DateTime get closingTime => throw _privateConstructorUsedError;
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
  $Res call({DateTime closingTime, Duration timeToEnd});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? closingTime = freezed,
    Object? timeToEnd = freezed,
  }) {
    return _then(_value.copyWith(
      closingTime: closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
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
  $Res call({DateTime closingTime, Duration timeToEnd});
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
    Object? closingTime = freezed,
    Object? timeToEnd = freezed,
  }) {
    return _then(_TimerState(
      closingTime: closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
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
  const _$_TimerState({required this.closingTime, required this.timeToEnd});

  @override
  final DateTime closingTime;
  @override
  final Duration timeToEnd;

  @override
  String toString() {
    return 'TimerState(closingTime: $closingTime, timeToEnd: $timeToEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerState &&
            const DeepCollectionEquality()
                .equals(other.closingTime, closingTime) &&
            const DeepCollectionEquality().equals(other.timeToEnd, timeToEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(closingTime),
      const DeepCollectionEquality().hash(timeToEnd));

  @JsonKey(ignore: true)
  @override
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState(
      {required DateTime closingTime,
      required Duration timeToEnd}) = _$_TimerState;

  @override
  DateTime get closingTime;
  @override
  Duration get timeToEnd;
  @override
  @JsonKey(ignore: true)
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
