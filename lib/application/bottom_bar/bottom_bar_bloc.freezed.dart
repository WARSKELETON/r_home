// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomBarEventTearOff {
  const _$BottomBarEventTearOff();

  _ChangeIndex changeIndex(int index) {
    return _ChangeIndex(
      index,
    );
  }
}

/// @nodoc
const $BottomBarEvent = _$BottomBarEventTearOff();

/// @nodoc
mixin _$BottomBarEvent {
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndex value) changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeIndex value)? changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndex value)? changeIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomBarEventCopyWith<BottomBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarEventCopyWith<$Res> {
  factory $BottomBarEventCopyWith(
          BottomBarEvent value, $Res Function(BottomBarEvent) then) =
      _$BottomBarEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomBarEventCopyWithImpl<$Res>
    implements $BottomBarEventCopyWith<$Res> {
  _$BottomBarEventCopyWithImpl(this._value, this._then);

  final BottomBarEvent _value;
  // ignore: unused_field
  final $Res Function(BottomBarEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ChangeIndexCopyWith<$Res>
    implements $BottomBarEventCopyWith<$Res> {
  factory _$ChangeIndexCopyWith(
          _ChangeIndex value, $Res Function(_ChangeIndex) then) =
      __$ChangeIndexCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$ChangeIndexCopyWithImpl<$Res>
    extends _$BottomBarEventCopyWithImpl<$Res>
    implements _$ChangeIndexCopyWith<$Res> {
  __$ChangeIndexCopyWithImpl(
      _ChangeIndex _value, $Res Function(_ChangeIndex) _then)
      : super(_value, (v) => _then(v as _ChangeIndex));

  @override
  _ChangeIndex get _value => super._value as _ChangeIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_ChangeIndex(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeIndex implements _ChangeIndex {
  const _$_ChangeIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomBarEvent.changeIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeIndex &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$ChangeIndexCopyWith<_ChangeIndex> get copyWith =>
      __$ChangeIndexCopyWithImpl<_ChangeIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndex,
  }) {
    return changeIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? changeIndex,
  }) {
    return changeIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndex value) changeIndex,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeIndex value)? changeIndex,
  }) {
    return changeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndex value)? changeIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeIndex implements BottomBarEvent {
  const factory _ChangeIndex(int index) = _$_ChangeIndex;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$ChangeIndexCopyWith<_ChangeIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BottomBarStateTearOff {
  const _$BottomBarStateTearOff();

  _BottomBarState call(
      {required int selectedIndex, required int previousIndex}) {
    return _BottomBarState(
      selectedIndex: selectedIndex,
      previousIndex: previousIndex,
    );
  }
}

/// @nodoc
const $BottomBarState = _$BottomBarStateTearOff();

/// @nodoc
mixin _$BottomBarState {
  int get selectedIndex => throw _privateConstructorUsedError;
  int get previousIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomBarStateCopyWith<BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarStateCopyWith<$Res> {
  factory $BottomBarStateCopyWith(
          BottomBarState value, $Res Function(BottomBarState) then) =
      _$BottomBarStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex, int previousIndex});
}

/// @nodoc
class _$BottomBarStateCopyWithImpl<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  _$BottomBarStateCopyWithImpl(this._value, this._then);

  final BottomBarState _value;
  // ignore: unused_field
  final $Res Function(BottomBarState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? previousIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      previousIndex: previousIndex == freezed
          ? _value.previousIndex
          : previousIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BottomBarStateCopyWith<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  factory _$BottomBarStateCopyWith(
          _BottomBarState value, $Res Function(_BottomBarState) then) =
      __$BottomBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex, int previousIndex});
}

/// @nodoc
class __$BottomBarStateCopyWithImpl<$Res>
    extends _$BottomBarStateCopyWithImpl<$Res>
    implements _$BottomBarStateCopyWith<$Res> {
  __$BottomBarStateCopyWithImpl(
      _BottomBarState _value, $Res Function(_BottomBarState) _then)
      : super(_value, (v) => _then(v as _BottomBarState));

  @override
  _BottomBarState get _value => super._value as _BottomBarState;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? previousIndex = freezed,
  }) {
    return _then(_BottomBarState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      previousIndex: previousIndex == freezed
          ? _value.previousIndex
          : previousIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomBarState implements _BottomBarState {
  const _$_BottomBarState(
      {required this.selectedIndex, required this.previousIndex});

  @override
  final int selectedIndex;
  @override
  final int previousIndex;

  @override
  String toString() {
    return 'BottomBarState(selectedIndex: $selectedIndex, previousIndex: $previousIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomBarState &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other.previousIndex, previousIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedIndex),
      const DeepCollectionEquality().hash(previousIndex));

  @JsonKey(ignore: true)
  @override
  _$BottomBarStateCopyWith<_BottomBarState> get copyWith =>
      __$BottomBarStateCopyWithImpl<_BottomBarState>(this, _$identity);
}

abstract class _BottomBarState implements BottomBarState {
  const factory _BottomBarState(
      {required int selectedIndex,
      required int previousIndex}) = _$_BottomBarState;

  @override
  int get selectedIndex;
  @override
  int get previousIndex;
  @override
  @JsonKey(ignore: true)
  _$BottomBarStateCopyWith<_BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
