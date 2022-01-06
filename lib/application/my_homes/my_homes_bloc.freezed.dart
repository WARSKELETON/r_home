// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_homes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyHomesEventTearOff {
  const _$MyHomesEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  HomesReceived homesReceived(List<Home> homes) {
    return HomesReceived(
      homes,
    );
  }
}

/// @nodoc
const $MyHomesEvent = _$MyHomesEventTearOff();

/// @nodoc
mixin _$MyHomesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomesEventCopyWith<$Res> {
  factory $MyHomesEventCopyWith(
          MyHomesEvent value, $Res Function(MyHomesEvent) then) =
      _$MyHomesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyHomesEventCopyWithImpl<$Res> implements $MyHomesEventCopyWith<$Res> {
  _$MyHomesEventCopyWithImpl(this._value, this._then);

  final MyHomesEvent _value;
  // ignore: unused_field
  final $Res Function(MyHomesEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$MyHomesEventCopyWithImpl<$Res>
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
    return 'MyHomesEvent.initialize()';
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
    required TResult Function(List<Home> homes) homesReceived,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
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
    required TResult Function(HomesReceived value) homesReceived,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements MyHomesEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $HomesReceivedCopyWith<$Res> {
  factory $HomesReceivedCopyWith(
          HomesReceived value, $Res Function(HomesReceived) then) =
      _$HomesReceivedCopyWithImpl<$Res>;
  $Res call({List<Home> homes});
}

/// @nodoc
class _$HomesReceivedCopyWithImpl<$Res> extends _$MyHomesEventCopyWithImpl<$Res>
    implements $HomesReceivedCopyWith<$Res> {
  _$HomesReceivedCopyWithImpl(
      HomesReceived _value, $Res Function(HomesReceived) _then)
      : super(_value, (v) => _then(v as HomesReceived));

  @override
  HomesReceived get _value => super._value as HomesReceived;

  @override
  $Res call({
    Object? homes = freezed,
  }) {
    return _then(HomesReceived(
      homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
    ));
  }
}

/// @nodoc

class _$HomesReceived implements HomesReceived {
  const _$HomesReceived(this.homes);

  @override
  final List<Home> homes;

  @override
  String toString() {
    return 'MyHomesEvent.homesReceived(homes: $homes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomesReceived &&
            const DeepCollectionEquality().equals(other.homes, homes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(homes));

  @JsonKey(ignore: true)
  @override
  $HomesReceivedCopyWith<HomesReceived> get copyWith =>
      _$HomesReceivedCopyWithImpl<HomesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Home> homes) homesReceived,
  }) {
    return homesReceived(homes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
  }) {
    return homesReceived?.call(homes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Home> homes)? homesReceived,
    required TResult orElse(),
  }) {
    if (homesReceived != null) {
      return homesReceived(homes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(HomesReceived value) homesReceived,
  }) {
    return homesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
  }) {
    return homesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(HomesReceived value)? homesReceived,
    required TResult orElse(),
  }) {
    if (homesReceived != null) {
      return homesReceived(this);
    }
    return orElse();
  }
}

abstract class HomesReceived implements MyHomesEvent {
  const factory HomesReceived(List<Home> homes) = _$HomesReceived;

  List<Home> get homes;
  @JsonKey(ignore: true)
  $HomesReceivedCopyWith<HomesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MyHomesStateTearOff {
  const _$MyHomesStateTearOff();

  _MyHomesState call({required bool isLoading, required List<Home> homes}) {
    return _MyHomesState(
      isLoading: isLoading,
      homes: homes,
    );
  }
}

/// @nodoc
const $MyHomesState = _$MyHomesStateTearOff();

/// @nodoc
mixin _$MyHomesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Home> get homes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyHomesStateCopyWith<MyHomesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomesStateCopyWith<$Res> {
  factory $MyHomesStateCopyWith(
          MyHomesState value, $Res Function(MyHomesState) then) =
      _$MyHomesStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Home> homes});
}

/// @nodoc
class _$MyHomesStateCopyWithImpl<$Res> implements $MyHomesStateCopyWith<$Res> {
  _$MyHomesStateCopyWithImpl(this._value, this._then);

  final MyHomesState _value;
  // ignore: unused_field
  final $Res Function(MyHomesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? homes = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homes: homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
    ));
  }
}

/// @nodoc
abstract class _$MyHomesStateCopyWith<$Res>
    implements $MyHomesStateCopyWith<$Res> {
  factory _$MyHomesStateCopyWith(
          _MyHomesState value, $Res Function(_MyHomesState) then) =
      __$MyHomesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Home> homes});
}

/// @nodoc
class __$MyHomesStateCopyWithImpl<$Res> extends _$MyHomesStateCopyWithImpl<$Res>
    implements _$MyHomesStateCopyWith<$Res> {
  __$MyHomesStateCopyWithImpl(
      _MyHomesState _value, $Res Function(_MyHomesState) _then)
      : super(_value, (v) => _then(v as _MyHomesState));

  @override
  _MyHomesState get _value => super._value as _MyHomesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? homes = freezed,
  }) {
    return _then(_MyHomesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homes: homes == freezed
          ? _value.homes
          : homes // ignore: cast_nullable_to_non_nullable
              as List<Home>,
    ));
  }
}

/// @nodoc

class _$_MyHomesState implements _MyHomesState {
  const _$_MyHomesState({required this.isLoading, required this.homes});

  @override
  final bool isLoading;
  @override
  final List<Home> homes;

  @override
  String toString() {
    return 'MyHomesState(isLoading: $isLoading, homes: $homes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyHomesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.homes, homes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(homes));

  @JsonKey(ignore: true)
  @override
  _$MyHomesStateCopyWith<_MyHomesState> get copyWith =>
      __$MyHomesStateCopyWithImpl<_MyHomesState>(this, _$identity);
}

abstract class _MyHomesState implements MyHomesState {
  const factory _MyHomesState(
      {required bool isLoading, required List<Home> homes}) = _$_MyHomesState;

  @override
  bool get isLoading;
  @override
  List<Home> get homes;
  @override
  @JsonKey(ignore: true)
  _$MyHomesStateCopyWith<_MyHomesState> get copyWith =>
      throw _privateConstructorUsedError;
}
