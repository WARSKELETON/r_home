// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_viewer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageViewerEventTearOff {
  const _$ImageViewerEventTearOff();

  SelectedImageIndex changeSelectedImageIndex(int selectedImageIndex) {
    return SelectedImageIndex(
      selectedImageIndex,
    );
  }
}

/// @nodoc
const $ImageViewerEvent = _$ImageViewerEventTearOff();

/// @nodoc
mixin _$ImageViewerEvent {
  int get selectedImageIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedImageIndex) changeSelectedImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int selectedImageIndex)? changeSelectedImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedImageIndex)? changeSelectedImageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedImageIndex value)
        changeSelectedImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectedImageIndex value)? changeSelectedImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedImageIndex value)? changeSelectedImageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageViewerEventCopyWith<ImageViewerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageViewerEventCopyWith<$Res> {
  factory $ImageViewerEventCopyWith(
          ImageViewerEvent value, $Res Function(ImageViewerEvent) then) =
      _$ImageViewerEventCopyWithImpl<$Res>;
  $Res call({int selectedImageIndex});
}

/// @nodoc
class _$ImageViewerEventCopyWithImpl<$Res>
    implements $ImageViewerEventCopyWith<$Res> {
  _$ImageViewerEventCopyWithImpl(this._value, this._then);

  final ImageViewerEvent _value;
  // ignore: unused_field
  final $Res Function(ImageViewerEvent) _then;

  @override
  $Res call({
    Object? selectedImageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedImageIndex: selectedImageIndex == freezed
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SelectedImageIndexCopyWith<$Res>
    implements $ImageViewerEventCopyWith<$Res> {
  factory $SelectedImageIndexCopyWith(
          SelectedImageIndex value, $Res Function(SelectedImageIndex) then) =
      _$SelectedImageIndexCopyWithImpl<$Res>;
  @override
  $Res call({int selectedImageIndex});
}

/// @nodoc
class _$SelectedImageIndexCopyWithImpl<$Res>
    extends _$ImageViewerEventCopyWithImpl<$Res>
    implements $SelectedImageIndexCopyWith<$Res> {
  _$SelectedImageIndexCopyWithImpl(
      SelectedImageIndex _value, $Res Function(SelectedImageIndex) _then)
      : super(_value, (v) => _then(v as SelectedImageIndex));

  @override
  SelectedImageIndex get _value => super._value as SelectedImageIndex;

  @override
  $Res call({
    Object? selectedImageIndex = freezed,
  }) {
    return _then(SelectedImageIndex(
      selectedImageIndex == freezed
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedImageIndex implements SelectedImageIndex {
  const _$SelectedImageIndex(this.selectedImageIndex);

  @override
  final int selectedImageIndex;

  @override
  String toString() {
    return 'ImageViewerEvent.changeSelectedImageIndex(selectedImageIndex: $selectedImageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectedImageIndex &&
            const DeepCollectionEquality()
                .equals(other.selectedImageIndex, selectedImageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedImageIndex));

  @JsonKey(ignore: true)
  @override
  $SelectedImageIndexCopyWith<SelectedImageIndex> get copyWith =>
      _$SelectedImageIndexCopyWithImpl<SelectedImageIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedImageIndex) changeSelectedImageIndex,
  }) {
    return changeSelectedImageIndex(selectedImageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int selectedImageIndex)? changeSelectedImageIndex,
  }) {
    return changeSelectedImageIndex?.call(selectedImageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedImageIndex)? changeSelectedImageIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedImageIndex != null) {
      return changeSelectedImageIndex(selectedImageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedImageIndex value)
        changeSelectedImageIndex,
  }) {
    return changeSelectedImageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectedImageIndex value)? changeSelectedImageIndex,
  }) {
    return changeSelectedImageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedImageIndex value)? changeSelectedImageIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedImageIndex != null) {
      return changeSelectedImageIndex(this);
    }
    return orElse();
  }
}

abstract class SelectedImageIndex implements ImageViewerEvent {
  const factory SelectedImageIndex(int selectedImageIndex) =
      _$SelectedImageIndex;

  @override
  int get selectedImageIndex;
  @override
  @JsonKey(ignore: true)
  $SelectedImageIndexCopyWith<SelectedImageIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ImageViewerStateTearOff {
  const _$ImageViewerStateTearOff();

  _ImageViewerState call({required int selectedImageIndex}) {
    return _ImageViewerState(
      selectedImageIndex: selectedImageIndex,
    );
  }
}

/// @nodoc
const $ImageViewerState = _$ImageViewerStateTearOff();

/// @nodoc
mixin _$ImageViewerState {
  int get selectedImageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageViewerStateCopyWith<ImageViewerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageViewerStateCopyWith<$Res> {
  factory $ImageViewerStateCopyWith(
          ImageViewerState value, $Res Function(ImageViewerState) then) =
      _$ImageViewerStateCopyWithImpl<$Res>;
  $Res call({int selectedImageIndex});
}

/// @nodoc
class _$ImageViewerStateCopyWithImpl<$Res>
    implements $ImageViewerStateCopyWith<$Res> {
  _$ImageViewerStateCopyWithImpl(this._value, this._then);

  final ImageViewerState _value;
  // ignore: unused_field
  final $Res Function(ImageViewerState) _then;

  @override
  $Res call({
    Object? selectedImageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedImageIndex: selectedImageIndex == freezed
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ImageViewerStateCopyWith<$Res>
    implements $ImageViewerStateCopyWith<$Res> {
  factory _$ImageViewerStateCopyWith(
          _ImageViewerState value, $Res Function(_ImageViewerState) then) =
      __$ImageViewerStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedImageIndex});
}

/// @nodoc
class __$ImageViewerStateCopyWithImpl<$Res>
    extends _$ImageViewerStateCopyWithImpl<$Res>
    implements _$ImageViewerStateCopyWith<$Res> {
  __$ImageViewerStateCopyWithImpl(
      _ImageViewerState _value, $Res Function(_ImageViewerState) _then)
      : super(_value, (v) => _then(v as _ImageViewerState));

  @override
  _ImageViewerState get _value => super._value as _ImageViewerState;

  @override
  $Res call({
    Object? selectedImageIndex = freezed,
  }) {
    return _then(_ImageViewerState(
      selectedImageIndex: selectedImageIndex == freezed
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageViewerState implements _ImageViewerState {
  const _$_ImageViewerState({required this.selectedImageIndex});

  @override
  final int selectedImageIndex;

  @override
  String toString() {
    return 'ImageViewerState(selectedImageIndex: $selectedImageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageViewerState &&
            const DeepCollectionEquality()
                .equals(other.selectedImageIndex, selectedImageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedImageIndex));

  @JsonKey(ignore: true)
  @override
  _$ImageViewerStateCopyWith<_ImageViewerState> get copyWith =>
      __$ImageViewerStateCopyWithImpl<_ImageViewerState>(this, _$identity);
}

abstract class _ImageViewerState implements ImageViewerState {
  const factory _ImageViewerState({required int selectedImageIndex}) =
      _$_ImageViewerState;

  @override
  int get selectedImageIndex;
  @override
  @JsonKey(ignore: true)
  _$ImageViewerStateCopyWith<_ImageViewerState> get copyWith =>
      throw _privateConstructorUsedError;
}
