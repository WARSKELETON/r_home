// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_activities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalActivitiesEventTearOff {
  const _$LocalActivitiesEventTearOff();

  Initialize initialize(bool? filtered, String? location) {
    return Initialize(
      filtered,
      location,
    );
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
const $LocalActivitiesEvent = _$LocalActivitiesEventTearOff();

/// @nodoc
mixin _$LocalActivitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? filtered, String? location) initialize,
    required TResult Function(List<LocalActivity> localActivities)
        localActivitiesReceived,
    required TResult Function(String localActivityUuid) watchLocalActivity,
    required TResult Function(LocalActivity localActivity)
        localActivityReceivedReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? filtered, String? location)? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? filtered, String? location)? initialize,
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
abstract class $LocalActivitiesEventCopyWith<$Res> {
  factory $LocalActivitiesEventCopyWith(LocalActivitiesEvent value,
          $Res Function(LocalActivitiesEvent) then) =
      _$LocalActivitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalActivitiesEventCopyWithImpl<$Res>
    implements $LocalActivitiesEventCopyWith<$Res> {
  _$LocalActivitiesEventCopyWithImpl(this._value, this._then);

  final LocalActivitiesEvent _value;
  // ignore: unused_field
  final $Res Function(LocalActivitiesEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({bool? filtered, String? location});
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res>
    extends _$LocalActivitiesEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object? filtered = freezed,
    Object? location = freezed,
  }) {
    return _then(Initialize(
      filtered == freezed
          ? _value.filtered
          : filtered // ignore: cast_nullable_to_non_nullable
              as bool?,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize(this.filtered, this.location);

  @override
  final bool? filtered;
  @override
  final String? location;

  @override
  String toString() {
    return 'LocalActivitiesEvent.initialize(filtered: $filtered, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialize &&
            const DeepCollectionEquality().equals(other.filtered, filtered) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filtered),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? filtered, String? location) initialize,
    required TResult Function(List<LocalActivity> localActivities)
        localActivitiesReceived,
    required TResult Function(String localActivityUuid) watchLocalActivity,
    required TResult Function(LocalActivity localActivity)
        localActivityReceivedReceived,
  }) {
    return initialize(filtered, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? filtered, String? location)? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
  }) {
    return initialize?.call(filtered, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? filtered, String? location)? initialize,
    TResult Function(List<LocalActivity> localActivities)?
        localActivitiesReceived,
    TResult Function(String localActivityUuid)? watchLocalActivity,
    TResult Function(LocalActivity localActivity)?
        localActivityReceivedReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(filtered, location);
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

abstract class Initialize implements LocalActivitiesEvent {
  const factory Initialize(bool? filtered, String? location) = _$Initialize;

  bool? get filtered;
  String? get location;
  @JsonKey(ignore: true)
  $InitializeCopyWith<Initialize> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$LocalActivitiesEventCopyWithImpl<$Res>
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
    return 'LocalActivitiesEvent.localActivitiesReceived(localActivities: $localActivities)';
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
    required TResult Function(bool? filtered, String? location) initialize,
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
    TResult Function(bool? filtered, String? location)? initialize,
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
    TResult Function(bool? filtered, String? location)? initialize,
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

abstract class LocalActivitiesReceived implements LocalActivitiesEvent {
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
    extends _$LocalActivitiesEventCopyWithImpl<$Res>
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
    return 'LocalActivitiesEvent.watchLocalActivity(localActivityUuid: $localActivityUuid)';
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
    required TResult Function(bool? filtered, String? location) initialize,
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
    TResult Function(bool? filtered, String? location)? initialize,
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
    TResult Function(bool? filtered, String? location)? initialize,
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

abstract class WatchLocalActivity implements LocalActivitiesEvent {
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
    extends _$LocalActivitiesEventCopyWithImpl<$Res>
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
    return 'LocalActivitiesEvent.localActivityReceivedReceived(localActivity: $localActivity)';
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
    required TResult Function(bool? filtered, String? location) initialize,
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
    TResult Function(bool? filtered, String? location)? initialize,
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
    TResult Function(bool? filtered, String? location)? initialize,
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

abstract class LocalActivityReceived implements LocalActivitiesEvent {
  const factory LocalActivityReceived(LocalActivity localActivity) =
      _$LocalActivityReceived;

  LocalActivity get localActivity;
  @JsonKey(ignore: true)
  $LocalActivityReceivedCopyWith<LocalActivityReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocalActivitiesStateTearOff {
  const _$LocalActivitiesStateTearOff();

  _LocalActivitiesState call(
      {required List<LocalActivity> localActivities,
      required LocalActivity localActivity}) {
    return _LocalActivitiesState(
      localActivities: localActivities,
      localActivity: localActivity,
    );
  }
}

/// @nodoc
const $LocalActivitiesState = _$LocalActivitiesStateTearOff();

/// @nodoc
mixin _$LocalActivitiesState {
  List<LocalActivity> get localActivities => throw _privateConstructorUsedError;
  LocalActivity get localActivity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalActivitiesStateCopyWith<LocalActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalActivitiesStateCopyWith<$Res> {
  factory $LocalActivitiesStateCopyWith(LocalActivitiesState value,
          $Res Function(LocalActivitiesState) then) =
      _$LocalActivitiesStateCopyWithImpl<$Res>;
  $Res call({List<LocalActivity> localActivities, LocalActivity localActivity});

  $LocalActivityCopyWith<$Res> get localActivity;
}

/// @nodoc
class _$LocalActivitiesStateCopyWithImpl<$Res>
    implements $LocalActivitiesStateCopyWith<$Res> {
  _$LocalActivitiesStateCopyWithImpl(this._value, this._then);

  final LocalActivitiesState _value;
  // ignore: unused_field
  final $Res Function(LocalActivitiesState) _then;

  @override
  $Res call({
    Object? localActivities = freezed,
    Object? localActivity = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$LocalActivitiesStateCopyWith<$Res>
    implements $LocalActivitiesStateCopyWith<$Res> {
  factory _$LocalActivitiesStateCopyWith(_LocalActivitiesState value,
          $Res Function(_LocalActivitiesState) then) =
      __$LocalActivitiesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<LocalActivity> localActivities, LocalActivity localActivity});

  @override
  $LocalActivityCopyWith<$Res> get localActivity;
}

/// @nodoc
class __$LocalActivitiesStateCopyWithImpl<$Res>
    extends _$LocalActivitiesStateCopyWithImpl<$Res>
    implements _$LocalActivitiesStateCopyWith<$Res> {
  __$LocalActivitiesStateCopyWithImpl(
      _LocalActivitiesState _value, $Res Function(_LocalActivitiesState) _then)
      : super(_value, (v) => _then(v as _LocalActivitiesState));

  @override
  _LocalActivitiesState get _value => super._value as _LocalActivitiesState;

  @override
  $Res call({
    Object? localActivities = freezed,
    Object? localActivity = freezed,
  }) {
    return _then(_LocalActivitiesState(
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

class _$_LocalActivitiesState implements _LocalActivitiesState {
  _$_LocalActivitiesState(
      {required this.localActivities, required this.localActivity});

  @override
  final List<LocalActivity> localActivities;
  @override
  final LocalActivity localActivity;

  @override
  String toString() {
    return 'LocalActivitiesState(localActivities: $localActivities, localActivity: $localActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalActivitiesState &&
            const DeepCollectionEquality()
                .equals(other.localActivities, localActivities) &&
            const DeepCollectionEquality()
                .equals(other.localActivity, localActivity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(localActivities),
      const DeepCollectionEquality().hash(localActivity));

  @JsonKey(ignore: true)
  @override
  _$LocalActivitiesStateCopyWith<_LocalActivitiesState> get copyWith =>
      __$LocalActivitiesStateCopyWithImpl<_LocalActivitiesState>(
          this, _$identity);
}

abstract class _LocalActivitiesState implements LocalActivitiesState {
  factory _LocalActivitiesState(
      {required List<LocalActivity> localActivities,
      required LocalActivity localActivity}) = _$_LocalActivitiesState;

  @override
  List<LocalActivity> get localActivities;
  @override
  LocalActivity get localActivity;
  @override
  @JsonKey(ignore: true)
  _$LocalActivitiesStateCopyWith<_LocalActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
