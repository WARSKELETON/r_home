// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_local_activities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyLocalActivitiesEventTearOff {
  const _$MyLocalActivitiesEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  LocalActivitiesReceived localActivitiesReceived(
      List<LocalActivity> localActivities) {
    return LocalActivitiesReceived(
      localActivities,
    );
  }

  WatchLocalActivity watchLocalActivity(String localActivityUuid) {
    return WatchLocalActivity(
      localActivityUuid,
    );
  }

  LocalActivityReceived localActivityReceivedReceived(
      LocalActivity localActivity) {
    return LocalActivityReceived(
      localActivity,
    );
  }
}

/// @nodoc
const $MyLocalActivitiesEvent = _$MyLocalActivitiesEventTearOff();

/// @nodoc
mixin _$MyLocalActivitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<LocalActivity> localActivities)
        localActivitiesReceived,
    required TResult Function(String localActivityUuid) watchLocalActivity,
    required TResult Function(LocalActivity localActivity)
        localActivityReceivedReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LocalActivitiesReceived value)
        localActivitiesReceived,
    required TResult Function(WatchLocalActivity value) watchLocalActivity,
    required TResult Function(LocalActivityReceived value)
        localActivityReceivedReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLocalActivitiesEventCopyWith<$Res> {
  factory $MyLocalActivitiesEventCopyWith(MyLocalActivitiesEvent value,
          $Res Function(MyLocalActivitiesEvent) then) =
      _$MyLocalActivitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyLocalActivitiesEventCopyWithImpl<$Res>
    implements $MyLocalActivitiesEventCopyWith<$Res> {
  _$MyLocalActivitiesEventCopyWithImpl(this._value, this._then);

  final MyLocalActivitiesEvent _value;
  // ignore: unused_field
  final $Res Function(MyLocalActivitiesEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res>
    extends _$MyLocalActivitiesEventCopyWithImpl<$Res>
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
    return 'MyLocalActivitiesEvent.initialize()';
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
    required TResult Function(List<LocalActivity> localActivities)
        localActivitiesReceived,
    required TResult Function(String localActivityUuid) watchLocalActivity,
    required TResult Function(LocalActivity localActivity)
        localActivityReceivedReceived,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
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
    required TResult Function(LocalActivitiesReceived value)
        localActivitiesReceived,
    required TResult Function(WatchLocalActivity value) watchLocalActivity,
    required TResult Function(LocalActivityReceived value)
        localActivityReceivedReceived,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements MyLocalActivitiesEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $LocalActivitiesReceivedCopyWith<$Res> {
  factory $LocalActivitiesReceivedCopyWith(LocalActivitiesReceived value,
          $Res Function(LocalActivitiesReceived) then) =
      _$LocalActivitiesReceivedCopyWithImpl<$Res>;
  $Res call({List<LocalActivity> localActivities});
}

/// @nodoc
class _$LocalActivitiesReceivedCopyWithImpl<$Res>
    extends _$MyLocalActivitiesEventCopyWithImpl<$Res>
    implements $LocalActivitiesReceivedCopyWith<$Res> {
  _$LocalActivitiesReceivedCopyWithImpl(LocalActivitiesReceived _value,
      $Res Function(LocalActivitiesReceived) _then)
      : super(_value, (v) => _then(v as LocalActivitiesReceived));

  @override
  LocalActivitiesReceived get _value => super._value as LocalActivitiesReceived;

  @override
  $Res call({
    Object? localActivities = freezed,
  }) {
    return _then(LocalActivitiesReceived(
      localActivities == freezed
          ? _value.localActivities
          : localActivities // ignore: cast_nullable_to_non_nullable
              as List<LocalActivity>,
    ));
  }
}

/// @nodoc

class _$LocalActivitiesReceived implements LocalActivitiesReceived {
  const _$LocalActivitiesReceived(this.localActivities);

  @override
  final List<LocalActivity> localActivities;

  @override
  String toString() {
    return 'MyLocalActivitiesEvent.localActivitiesReceived(localActivities: $localActivities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalActivitiesReceived &&
            const DeepCollectionEquality()
                .equals(other.localActivities, localActivities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localActivities));

  @JsonKey(ignore: true)
  @override
  $LocalActivitiesReceivedCopyWith<LocalActivitiesReceived> get copyWith =>
      _$LocalActivitiesReceivedCopyWithImpl<LocalActivitiesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<LocalActivity> localActivities)
        localActivitiesReceived,
    required TResult Function(String localActivityUuid) watchLocalActivity,
    required TResult Function(LocalActivity localActivity)
        localActivityReceivedReceived,
  }) {
    return localActivitiesReceived(localActivities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
  }) {
    return localActivitiesReceived?.call(localActivities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (localActivitiesReceived != null) {
      return localActivitiesReceived(localActivities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LocalActivitiesReceived value)
        localActivitiesReceived,
    required TResult Function(WatchLocalActivity value) watchLocalActivity,
    required TResult Function(LocalActivityReceived value)
        localActivityReceivedReceived,
  }) {
    return localActivitiesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
  }) {
    return localActivitiesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (localActivitiesReceived != null) {
      return localActivitiesReceived(this);
    }
    return orElse();
  }
}

abstract class LocalActivitiesReceived implements MyLocalActivitiesEvent {
  const factory LocalActivitiesReceived(List<LocalActivity> localActivities) =
      _$LocalActivitiesReceived;

  List<LocalActivity> get localActivities;
  @JsonKey(ignore: true)
  $LocalActivitiesReceivedCopyWith<LocalActivitiesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchLocalActivityCopyWith<$Res> {
  factory $WatchLocalActivityCopyWith(
          WatchLocalActivity value, $Res Function(WatchLocalActivity) then) =
      _$WatchLocalActivityCopyWithImpl<$Res>;
  $Res call({String localActivityUuid});
}

/// @nodoc
class _$WatchLocalActivityCopyWithImpl<$Res>
    extends _$MyLocalActivitiesEventCopyWithImpl<$Res>
    implements $WatchLocalActivityCopyWith<$Res> {
  _$WatchLocalActivityCopyWithImpl(
      WatchLocalActivity _value, $Res Function(WatchLocalActivity) _then)
      : super(_value, (v) => _then(v as WatchLocalActivity));

  @override
  WatchLocalActivity get _value => super._value as WatchLocalActivity;

  @override
  $Res call({
    Object? localActivityUuid = freezed,
  }) {
    return _then(WatchLocalActivity(
      localActivityUuid == freezed
          ? _value.localActivityUuid
          : localActivityUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchLocalActivity implements WatchLocalActivity {
  const _$WatchLocalActivity(this.localActivityUuid);

  @override
  final String localActivityUuid;

  @override
  String toString() {
    return 'MyLocalActivitiesEvent.watchLocalActivity(localActivityUuid: $localActivityUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchLocalActivity &&
            const DeepCollectionEquality()
                .equals(other.localActivityUuid, localActivityUuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localActivityUuid));

  @JsonKey(ignore: true)
  @override
  $WatchLocalActivityCopyWith<WatchLocalActivity> get copyWith =>
      _$WatchLocalActivityCopyWithImpl<WatchLocalActivity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<LocalActivity> localActivities)
        localActivitiesReceived,
    required TResult Function(String localActivityUuid) watchLocalActivity,
    required TResult Function(LocalActivity localActivity)
        localActivityReceivedReceived,
  }) {
    return watchLocalActivity(localActivityUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
  }) {
    return watchLocalActivity?.call(localActivityUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (watchLocalActivity != null) {
      return watchLocalActivity(localActivityUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LocalActivitiesReceived value)
        localActivitiesReceived,
    required TResult Function(WatchLocalActivity value) watchLocalActivity,
    required TResult Function(LocalActivityReceived value)
        localActivityReceivedReceived,
  }) {
    return watchLocalActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
  }) {
    return watchLocalActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (watchLocalActivity != null) {
      return watchLocalActivity(this);
    }
    return orElse();
  }
}

abstract class WatchLocalActivity implements MyLocalActivitiesEvent {
  const factory WatchLocalActivity(String localActivityUuid) =
      _$WatchLocalActivity;

  String get localActivityUuid;
  @JsonKey(ignore: true)
  $WatchLocalActivityCopyWith<WatchLocalActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalActivityReceivedCopyWith<$Res> {
  factory $LocalActivityReceivedCopyWith(LocalActivityReceived value,
          $Res Function(LocalActivityReceived) then) =
      _$LocalActivityReceivedCopyWithImpl<$Res>;
  $Res call({LocalActivity localActivity});

  $LocalActivityCopyWith<$Res> get localActivity;
}

/// @nodoc
class _$LocalActivityReceivedCopyWithImpl<$Res>
    extends _$MyLocalActivitiesEventCopyWithImpl<$Res>
    implements $LocalActivityReceivedCopyWith<$Res> {
  _$LocalActivityReceivedCopyWithImpl(
      LocalActivityReceived _value, $Res Function(LocalActivityReceived) _then)
      : super(_value, (v) => _then(v as LocalActivityReceived));

  @override
  LocalActivityReceived get _value => super._value as LocalActivityReceived;

  @override
  $Res call({
    Object? localActivity = freezed,
  }) {
    return _then(LocalActivityReceived(
      localActivity == freezed
          ? _value.localActivity
          : localActivity // ignore: cast_nullable_to_non_nullable
              as LocalActivity,
    ));
  }

  @override
  $LocalActivityCopyWith<$Res> get localActivity {
    return $LocalActivityCopyWith<$Res>(_value.localActivity, (value) {
      return _then(_value.copyWith(localActivity: value));
    });
  }
}

/// @nodoc

class _$LocalActivityReceived implements LocalActivityReceived {
  const _$LocalActivityReceived(this.localActivity);

  @override
  final LocalActivity localActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesEvent.localActivityReceivedReceived(localActivity: $localActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalActivityReceived &&
            const DeepCollectionEquality()
                .equals(other.localActivity, localActivity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localActivity));

  @JsonKey(ignore: true)
  @override
  $LocalActivityReceivedCopyWith<LocalActivityReceived> get copyWith =>
      _$LocalActivityReceivedCopyWithImpl<LocalActivityReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<LocalActivity> localActivities)
        localActivitiesReceived,
    required TResult Function(String localActivityUuid) watchLocalActivity,
    required TResult Function(LocalActivity localActivity)
        localActivityReceivedReceived,
  }) {
    return localActivityReceivedReceived(localActivity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
  }) {
    return localActivityReceivedReceived?.call(localActivity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (localActivityReceivedReceived != null) {
      return localActivityReceivedReceived(localActivity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(LocalActivitiesReceived value)
        localActivitiesReceived,
    required TResult Function(WatchLocalActivity value) watchLocalActivity,
    required TResult Function(LocalActivityReceived value)
        localActivityReceivedReceived,
  }) {
    return localActivityReceivedReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
  }) {
    return localActivityReceivedReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(LocalActivitiesReceived value)? localActivitiesReceived,
    TResult Function(WatchLocalActivity value)? watchLocalActivity,
    TResult Function(LocalActivityReceived value)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (localActivityReceivedReceived != null) {
      return localActivityReceivedReceived(this);
    }
    return orElse();
  }
}

abstract class LocalActivityReceived implements MyLocalActivitiesEvent {
  const factory LocalActivityReceived(LocalActivity localActivity) =
      _$LocalActivityReceived;

  LocalActivity get localActivity;
  @JsonKey(ignore: true)
  $LocalActivityReceivedCopyWith<LocalActivityReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MyLocalActivitiesStateTearOff {
  const _$MyLocalActivitiesStateTearOff();

  _MyLocalActivitiesState call(
      {required bool isLoading,
      required List<LocalActivity> localActivities,
      required LocalActivity localActivity}) {
    return _MyLocalActivitiesState(
      isLoading: isLoading,
      localActivities: localActivities,
      localActivity: localActivity,
    );
  }
}

/// @nodoc
const $MyLocalActivitiesState = _$MyLocalActivitiesStateTearOff();

/// @nodoc
mixin _$MyLocalActivitiesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<LocalActivity> get localActivities => throw _privateConstructorUsedError;
  LocalActivity get localActivity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyLocalActivitiesStateCopyWith<MyLocalActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLocalActivitiesStateCopyWith<$Res> {
  factory $MyLocalActivitiesStateCopyWith(MyLocalActivitiesState value,
          $Res Function(MyLocalActivitiesState) then) =
      _$MyLocalActivitiesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<LocalActivity> localActivities,
      LocalActivity localActivity});

  $LocalActivityCopyWith<$Res> get localActivity;
}

/// @nodoc
class _$MyLocalActivitiesStateCopyWithImpl<$Res>
    implements $MyLocalActivitiesStateCopyWith<$Res> {
  _$MyLocalActivitiesStateCopyWithImpl(this._value, this._then);

  final MyLocalActivitiesState _value;
  // ignore: unused_field
  final $Res Function(MyLocalActivitiesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? localActivities = freezed,
    Object? localActivity = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      localActivities: localActivities == freezed
          ? _value.localActivities
          : localActivities // ignore: cast_nullable_to_non_nullable
              as List<LocalActivity>,
      localActivity: localActivity == freezed
          ? _value.localActivity
          : localActivity // ignore: cast_nullable_to_non_nullable
              as LocalActivity,
    ));
  }

  @override
  $LocalActivityCopyWith<$Res> get localActivity {
    return $LocalActivityCopyWith<$Res>(_value.localActivity, (value) {
      return _then(_value.copyWith(localActivity: value));
    });
  }
}

/// @nodoc
abstract class _$MyLocalActivitiesStateCopyWith<$Res>
    implements $MyLocalActivitiesStateCopyWith<$Res> {
  factory _$MyLocalActivitiesStateCopyWith(_MyLocalActivitiesState value,
          $Res Function(_MyLocalActivitiesState) then) =
      __$MyLocalActivitiesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<LocalActivity> localActivities,
      LocalActivity localActivity});

  @override
  $LocalActivityCopyWith<$Res> get localActivity;
}

/// @nodoc
class __$MyLocalActivitiesStateCopyWithImpl<$Res>
    extends _$MyLocalActivitiesStateCopyWithImpl<$Res>
    implements _$MyLocalActivitiesStateCopyWith<$Res> {
  __$MyLocalActivitiesStateCopyWithImpl(_MyLocalActivitiesState _value,
      $Res Function(_MyLocalActivitiesState) _then)
      : super(_value, (v) => _then(v as _MyLocalActivitiesState));

  @override
  _MyLocalActivitiesState get _value => super._value as _MyLocalActivitiesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? localActivities = freezed,
    Object? localActivity = freezed,
  }) {
    return _then(_MyLocalActivitiesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      localActivities: localActivities == freezed
          ? _value.localActivities
          : localActivities // ignore: cast_nullable_to_non_nullable
              as List<LocalActivity>,
      localActivity: localActivity == freezed
          ? _value.localActivity
          : localActivity // ignore: cast_nullable_to_non_nullable
              as LocalActivity,
    ));
  }
}

/// @nodoc

class _$_MyLocalActivitiesState implements _MyLocalActivitiesState {
  _$_MyLocalActivitiesState(
      {required this.isLoading,
      required this.localActivities,
      required this.localActivity});

  @override
  final bool isLoading;
  @override
  final List<LocalActivity> localActivities;
  @override
  final LocalActivity localActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesState(isLoading: $isLoading, localActivities: $localActivities, localActivity: $localActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyLocalActivitiesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.localActivities, localActivities) &&
            const DeepCollectionEquality()
                .equals(other.localActivity, localActivity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(localActivities),
      const DeepCollectionEquality().hash(localActivity));

  @JsonKey(ignore: true)
  @override
  _$MyLocalActivitiesStateCopyWith<_MyLocalActivitiesState> get copyWith =>
      __$MyLocalActivitiesStateCopyWithImpl<_MyLocalActivitiesState>(
          this, _$identity);
}

abstract class _MyLocalActivitiesState implements MyLocalActivitiesState {
  factory _MyLocalActivitiesState(
      {required bool isLoading,
      required List<LocalActivity> localActivities,
      required LocalActivity localActivity}) = _$_MyLocalActivitiesState;

  @override
  bool get isLoading;
  @override
  List<LocalActivity> get localActivities;
  @override
  LocalActivity get localActivity;
  @override
  @JsonKey(ignore: true)
  _$MyLocalActivitiesStateCopyWith<_MyLocalActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
