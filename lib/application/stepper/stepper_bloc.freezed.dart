// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stepper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StepperEventTearOff {
  const _$StepperEventTearOff();

  _IncrementIndex incrementIndex() {
    return const _IncrementIndex();
  }

  _DecrementIndex decrementIndex() {
    return const _DecrementIndex();
  }
}

/// @nodoc
const $StepperEvent = _$StepperEventTearOff();

/// @nodoc
mixin _$StepperEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementIndex,
    required TResult Function() decrementIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incrementIndex,
    TResult Function()? decrementIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementIndex,
    TResult Function()? decrementIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementIndex value) incrementIndex,
    required TResult Function(_DecrementIndex value) decrementIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncrementIndex value)? incrementIndex,
    TResult Function(_DecrementIndex value)? decrementIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementIndex value)? incrementIndex,
    TResult Function(_DecrementIndex value)? decrementIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepperEventCopyWith<$Res> {
  factory $StepperEventCopyWith(
          StepperEvent value, $Res Function(StepperEvent) then) =
      _$StepperEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StepperEventCopyWithImpl<$Res> implements $StepperEventCopyWith<$Res> {
  _$StepperEventCopyWithImpl(this._value, this._then);

  final StepperEvent _value;
  // ignore: unused_field
  final $Res Function(StepperEvent) _then;
}

/// @nodoc
abstract class _$IncrementIndexCopyWith<$Res> {
  factory _$IncrementIndexCopyWith(
          _IncrementIndex value, $Res Function(_IncrementIndex) then) =
      __$IncrementIndexCopyWithImpl<$Res>;
}

/// @nodoc
class __$IncrementIndexCopyWithImpl<$Res>
    extends _$StepperEventCopyWithImpl<$Res>
    implements _$IncrementIndexCopyWith<$Res> {
  __$IncrementIndexCopyWithImpl(
      _IncrementIndex _value, $Res Function(_IncrementIndex) _then)
      : super(_value, (v) => _then(v as _IncrementIndex));

  @override
  _IncrementIndex get _value => super._value as _IncrementIndex;
}

/// @nodoc

class _$_IncrementIndex implements _IncrementIndex {
  const _$_IncrementIndex();

  @override
  String toString() {
    return 'StepperEvent.incrementIndex()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IncrementIndex);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementIndex,
    required TResult Function() decrementIndex,
  }) {
    return incrementIndex();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incrementIndex,
    TResult Function()? decrementIndex,
  }) {
    return incrementIndex?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementIndex,
    TResult Function()? decrementIndex,
    required TResult orElse(),
  }) {
    if (incrementIndex != null) {
      return incrementIndex();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementIndex value) incrementIndex,
    required TResult Function(_DecrementIndex value) decrementIndex,
  }) {
    return incrementIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncrementIndex value)? incrementIndex,
    TResult Function(_DecrementIndex value)? decrementIndex,
  }) {
    return incrementIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementIndex value)? incrementIndex,
    TResult Function(_DecrementIndex value)? decrementIndex,
    required TResult orElse(),
  }) {
    if (incrementIndex != null) {
      return incrementIndex(this);
    }
    return orElse();
  }
}

abstract class _IncrementIndex implements StepperEvent {
  const factory _IncrementIndex() = _$_IncrementIndex;
}

/// @nodoc
abstract class _$DecrementIndexCopyWith<$Res> {
  factory _$DecrementIndexCopyWith(
          _DecrementIndex value, $Res Function(_DecrementIndex) then) =
      __$DecrementIndexCopyWithImpl<$Res>;
}

/// @nodoc
class __$DecrementIndexCopyWithImpl<$Res>
    extends _$StepperEventCopyWithImpl<$Res>
    implements _$DecrementIndexCopyWith<$Res> {
  __$DecrementIndexCopyWithImpl(
      _DecrementIndex _value, $Res Function(_DecrementIndex) _then)
      : super(_value, (v) => _then(v as _DecrementIndex));

  @override
  _DecrementIndex get _value => super._value as _DecrementIndex;
}

/// @nodoc

class _$_DecrementIndex implements _DecrementIndex {
  const _$_DecrementIndex();

  @override
  String toString() {
    return 'StepperEvent.decrementIndex()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DecrementIndex);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementIndex,
    required TResult Function() decrementIndex,
  }) {
    return decrementIndex();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incrementIndex,
    TResult Function()? decrementIndex,
  }) {
    return decrementIndex?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementIndex,
    TResult Function()? decrementIndex,
    required TResult orElse(),
  }) {
    if (decrementIndex != null) {
      return decrementIndex();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementIndex value) incrementIndex,
    required TResult Function(_DecrementIndex value) decrementIndex,
  }) {
    return decrementIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncrementIndex value)? incrementIndex,
    TResult Function(_DecrementIndex value)? decrementIndex,
  }) {
    return decrementIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementIndex value)? incrementIndex,
    TResult Function(_DecrementIndex value)? decrementIndex,
    required TResult orElse(),
  }) {
    if (decrementIndex != null) {
      return decrementIndex(this);
    }
    return orElse();
  }
}

abstract class _DecrementIndex implements StepperEvent {
  const factory _DecrementIndex() = _$_DecrementIndex;
}

/// @nodoc
class _$StepperStateTearOff {
  const _$StepperStateTearOff();

  _StepperState call({required int selectedIndex}) {
    return _StepperState(
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
const $StepperState = _$StepperStateTearOff();

/// @nodoc
mixin _$StepperState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepperStateCopyWith<StepperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepperStateCopyWith<$Res> {
  factory $StepperStateCopyWith(
          StepperState value, $Res Function(StepperState) then) =
      _$StepperStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex});
}

/// @nodoc
class _$StepperStateCopyWithImpl<$Res> implements $StepperStateCopyWith<$Res> {
  _$StepperStateCopyWithImpl(this._value, this._then);

  final StepperState _value;
  // ignore: unused_field
  final $Res Function(StepperState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StepperStateCopyWith<$Res>
    implements $StepperStateCopyWith<$Res> {
  factory _$StepperStateCopyWith(
          _StepperState value, $Res Function(_StepperState) then) =
      __$StepperStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex});
}

/// @nodoc
class __$StepperStateCopyWithImpl<$Res> extends _$StepperStateCopyWithImpl<$Res>
    implements _$StepperStateCopyWith<$Res> {
  __$StepperStateCopyWithImpl(
      _StepperState _value, $Res Function(_StepperState) _then)
      : super(_value, (v) => _then(v as _StepperState));

  @override
  _StepperState get _value => super._value as _StepperState;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_StepperState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StepperState implements _StepperState {
  const _$_StepperState({required this.selectedIndex});

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'StepperState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StepperState &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedIndex));

  @JsonKey(ignore: true)
  @override
  _$StepperStateCopyWith<_StepperState> get copyWith =>
      __$StepperStateCopyWithImpl<_StepperState>(this, _$identity);
}

abstract class _StepperState implements StepperState {
  const factory _StepperState({required int selectedIndex}) = _$_StepperState;

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$StepperStateCopyWith<_StepperState> get copyWith =>
      throw _privateConstructorUsedError;
}
