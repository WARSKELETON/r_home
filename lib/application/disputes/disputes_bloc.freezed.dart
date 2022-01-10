// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'disputes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DisputesEventTearOff {
  const _$DisputesEventTearOff();

  Initialize initialize(bool allDisputes) {
    return Initialize(
      allDisputes,
    );
  }

  DisputesReceived disputesReceived(List<Dispute> disputes) {
    return DisputesReceived(
      disputes,
    );
  }

  WatchDispute watchDispute(String disputeUuid) {
    return WatchDispute(
      disputeUuid,
    );
  }

  DisputeReceived disputeReceived(Dispute dispute) {
    return DisputeReceived(
      dispute,
    );
  }
}

/// @nodoc
const $DisputesEvent = _$DisputesEventTearOff();

/// @nodoc
mixin _$DisputesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(DisputesReceived value) disputesReceived,
    required TResult Function(WatchDispute value) watchDispute,
    required TResult Function(DisputeReceived value) disputeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputesEventCopyWith<$Res> {
  factory $DisputesEventCopyWith(
          DisputesEvent value, $Res Function(DisputesEvent) then) =
      _$DisputesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisputesEventCopyWithImpl<$Res>
    implements $DisputesEventCopyWith<$Res> {
  _$DisputesEventCopyWithImpl(this._value, this._then);

  final DisputesEvent _value;
  // ignore: unused_field
  final $Res Function(DisputesEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({bool allDisputes});
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$DisputesEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object? allDisputes = freezed,
  }) {
    return _then(Initialize(
      allDisputes == freezed
          ? _value.allDisputes
          : allDisputes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize(this.allDisputes);

  @override
  final bool allDisputes;

  @override
  String toString() {
    return 'DisputesEvent.initialize(allDisputes: $allDisputes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialize &&
            const DeepCollectionEquality()
                .equals(other.allDisputes, allDisputes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(allDisputes));

  @JsonKey(ignore: true)
  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
  }) {
    return initialize(allDisputes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
  }) {
    return initialize?.call(allDisputes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(allDisputes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(DisputesReceived value) disputesReceived,
    required TResult Function(WatchDispute value) watchDispute,
    required TResult Function(DisputeReceived value) disputeReceived,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements DisputesEvent {
  const factory Initialize(bool allDisputes) = _$Initialize;

  bool get allDisputes;
  @JsonKey(ignore: true)
  $InitializeCopyWith<Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputesReceivedCopyWith<$Res> {
  factory $DisputesReceivedCopyWith(
          DisputesReceived value, $Res Function(DisputesReceived) then) =
      _$DisputesReceivedCopyWithImpl<$Res>;
  $Res call({List<Dispute> disputes});
}

/// @nodoc
class _$DisputesReceivedCopyWithImpl<$Res>
    extends _$DisputesEventCopyWithImpl<$Res>
    implements $DisputesReceivedCopyWith<$Res> {
  _$DisputesReceivedCopyWithImpl(
      DisputesReceived _value, $Res Function(DisputesReceived) _then)
      : super(_value, (v) => _then(v as DisputesReceived));

  @override
  DisputesReceived get _value => super._value as DisputesReceived;

  @override
  $Res call({
    Object? disputes = freezed,
  }) {
    return _then(DisputesReceived(
      disputes == freezed
          ? _value.disputes
          : disputes // ignore: cast_nullable_to_non_nullable
              as List<Dispute>,
    ));
  }
}

/// @nodoc

class _$DisputesReceived implements DisputesReceived {
  const _$DisputesReceived(this.disputes);

  @override
  final List<Dispute> disputes;

  @override
  String toString() {
    return 'DisputesEvent.disputesReceived(disputes: $disputes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisputesReceived &&
            const DeepCollectionEquality().equals(other.disputes, disputes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(disputes));

  @JsonKey(ignore: true)
  @override
  $DisputesReceivedCopyWith<DisputesReceived> get copyWith =>
      _$DisputesReceivedCopyWithImpl<DisputesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
  }) {
    return disputesReceived(disputes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
  }) {
    return disputesReceived?.call(disputes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    required TResult orElse(),
  }) {
    if (disputesReceived != null) {
      return disputesReceived(disputes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(DisputesReceived value) disputesReceived,
    required TResult Function(WatchDispute value) watchDispute,
    required TResult Function(DisputeReceived value) disputeReceived,
  }) {
    return disputesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
  }) {
    return disputesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    required TResult orElse(),
  }) {
    if (disputesReceived != null) {
      return disputesReceived(this);
    }
    return orElse();
  }
}

abstract class DisputesReceived implements DisputesEvent {
  const factory DisputesReceived(List<Dispute> disputes) = _$DisputesReceived;

  List<Dispute> get disputes;
  @JsonKey(ignore: true)
  $DisputesReceivedCopyWith<DisputesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchDisputeCopyWith<$Res> {
  factory $WatchDisputeCopyWith(
          WatchDispute value, $Res Function(WatchDispute) then) =
      _$WatchDisputeCopyWithImpl<$Res>;
  $Res call({String disputeUuid});
}

/// @nodoc
class _$WatchDisputeCopyWithImpl<$Res> extends _$DisputesEventCopyWithImpl<$Res>
    implements $WatchDisputeCopyWith<$Res> {
  _$WatchDisputeCopyWithImpl(
      WatchDispute _value, $Res Function(WatchDispute) _then)
      : super(_value, (v) => _then(v as WatchDispute));

  @override
  WatchDispute get _value => super._value as WatchDispute;

  @override
  $Res call({
    Object? disputeUuid = freezed,
  }) {
    return _then(WatchDispute(
      disputeUuid == freezed
          ? _value.disputeUuid
          : disputeUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchDispute implements WatchDispute {
  const _$WatchDispute(this.disputeUuid);

  @override
  final String disputeUuid;

  @override
  String toString() {
    return 'DisputesEvent.watchDispute(disputeUuid: $disputeUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchDispute &&
            const DeepCollectionEquality()
                .equals(other.disputeUuid, disputeUuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(disputeUuid));

  @JsonKey(ignore: true)
  @override
  $WatchDisputeCopyWith<WatchDispute> get copyWith =>
      _$WatchDisputeCopyWithImpl<WatchDispute>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
  }) {
    return watchDispute(disputeUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
  }) {
    return watchDispute?.call(disputeUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    required TResult orElse(),
  }) {
    if (watchDispute != null) {
      return watchDispute(disputeUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(DisputesReceived value) disputesReceived,
    required TResult Function(WatchDispute value) watchDispute,
    required TResult Function(DisputeReceived value) disputeReceived,
  }) {
    return watchDispute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
  }) {
    return watchDispute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    required TResult orElse(),
  }) {
    if (watchDispute != null) {
      return watchDispute(this);
    }
    return orElse();
  }
}

abstract class WatchDispute implements DisputesEvent {
  const factory WatchDispute(String disputeUuid) = _$WatchDispute;

  String get disputeUuid;
  @JsonKey(ignore: true)
  $WatchDisputeCopyWith<WatchDispute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeReceivedCopyWith<$Res> {
  factory $DisputeReceivedCopyWith(
          DisputeReceived value, $Res Function(DisputeReceived) then) =
      _$DisputeReceivedCopyWithImpl<$Res>;
  $Res call({Dispute dispute});

  $DisputeCopyWith<$Res> get dispute;
}

/// @nodoc
class _$DisputeReceivedCopyWithImpl<$Res>
    extends _$DisputesEventCopyWithImpl<$Res>
    implements $DisputeReceivedCopyWith<$Res> {
  _$DisputeReceivedCopyWithImpl(
      DisputeReceived _value, $Res Function(DisputeReceived) _then)
      : super(_value, (v) => _then(v as DisputeReceived));

  @override
  DisputeReceived get _value => super._value as DisputeReceived;

  @override
  $Res call({
    Object? dispute = freezed,
  }) {
    return _then(DisputeReceived(
      dispute == freezed
          ? _value.dispute
          : dispute // ignore: cast_nullable_to_non_nullable
              as Dispute,
    ));
  }

  @override
  $DisputeCopyWith<$Res> get dispute {
    return $DisputeCopyWith<$Res>(_value.dispute, (value) {
      return _then(_value.copyWith(dispute: value));
    });
  }
}

/// @nodoc

class _$DisputeReceived implements DisputeReceived {
  const _$DisputeReceived(this.dispute);

  @override
  final Dispute dispute;

  @override
  String toString() {
    return 'DisputesEvent.disputeReceived(dispute: $dispute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisputeReceived &&
            const DeepCollectionEquality().equals(other.dispute, dispute));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dispute));

  @JsonKey(ignore: true)
  @override
  $DisputeReceivedCopyWith<DisputeReceived> get copyWith =>
      _$DisputeReceivedCopyWithImpl<DisputeReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
  }) {
    return disputeReceived(dispute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
  }) {
    return disputeReceived?.call(dispute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    required TResult orElse(),
  }) {
    if (disputeReceived != null) {
      return disputeReceived(dispute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(DisputesReceived value) disputesReceived,
    required TResult Function(WatchDispute value) watchDispute,
    required TResult Function(DisputeReceived value) disputeReceived,
  }) {
    return disputeReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
  }) {
    return disputeReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    required TResult orElse(),
  }) {
    if (disputeReceived != null) {
      return disputeReceived(this);
    }
    return orElse();
  }
}

abstract class DisputeReceived implements DisputesEvent {
  const factory DisputeReceived(Dispute dispute) = _$DisputeReceived;

  Dispute get dispute;
  @JsonKey(ignore: true)
  $DisputeReceivedCopyWith<DisputeReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DisputesStateTearOff {
  const _$DisputesStateTearOff();

  _DisputesState call(
      {required bool isLoading,
      required List<Dispute> disputes,
      required Dispute dispute}) {
    return _DisputesState(
      isLoading: isLoading,
      disputes: disputes,
      dispute: dispute,
    );
  }
}

/// @nodoc
const $DisputesState = _$DisputesStateTearOff();

/// @nodoc
mixin _$DisputesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Dispute> get disputes => throw _privateConstructorUsedError;
  Dispute get dispute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisputesStateCopyWith<DisputesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputesStateCopyWith<$Res> {
  factory $DisputesStateCopyWith(
          DisputesState value, $Res Function(DisputesState) then) =
      _$DisputesStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Dispute> disputes, Dispute dispute});

  $DisputeCopyWith<$Res> get dispute;
}

/// @nodoc
class _$DisputesStateCopyWithImpl<$Res>
    implements $DisputesStateCopyWith<$Res> {
  _$DisputesStateCopyWithImpl(this._value, this._then);

  final DisputesState _value;
  // ignore: unused_field
  final $Res Function(DisputesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? disputes = freezed,
    Object? dispute = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      disputes: disputes == freezed
          ? _value.disputes
          : disputes // ignore: cast_nullable_to_non_nullable
              as List<Dispute>,
      dispute: dispute == freezed
          ? _value.dispute
          : dispute // ignore: cast_nullable_to_non_nullable
              as Dispute,
    ));
  }

  @override
  $DisputeCopyWith<$Res> get dispute {
    return $DisputeCopyWith<$Res>(_value.dispute, (value) {
      return _then(_value.copyWith(dispute: value));
    });
  }
}

/// @nodoc
abstract class _$DisputesStateCopyWith<$Res>
    implements $DisputesStateCopyWith<$Res> {
  factory _$DisputesStateCopyWith(
          _DisputesState value, $Res Function(_DisputesState) then) =
      __$DisputesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Dispute> disputes, Dispute dispute});

  @override
  $DisputeCopyWith<$Res> get dispute;
}

/// @nodoc
class __$DisputesStateCopyWithImpl<$Res>
    extends _$DisputesStateCopyWithImpl<$Res>
    implements _$DisputesStateCopyWith<$Res> {
  __$DisputesStateCopyWithImpl(
      _DisputesState _value, $Res Function(_DisputesState) _then)
      : super(_value, (v) => _then(v as _DisputesState));

  @override
  _DisputesState get _value => super._value as _DisputesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? disputes = freezed,
    Object? dispute = freezed,
  }) {
    return _then(_DisputesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      disputes: disputes == freezed
          ? _value.disputes
          : disputes // ignore: cast_nullable_to_non_nullable
              as List<Dispute>,
      dispute: dispute == freezed
          ? _value.dispute
          : dispute // ignore: cast_nullable_to_non_nullable
              as Dispute,
    ));
  }
}

/// @nodoc

class _$_DisputesState implements _DisputesState {
  const _$_DisputesState(
      {required this.isLoading, required this.disputes, required this.dispute});

  @override
  final bool isLoading;
  @override
  final List<Dispute> disputes;
  @override
  final Dispute dispute;

  @override
  String toString() {
    return 'DisputesState(isLoading: $isLoading, disputes: $disputes, dispute: $dispute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisputesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.disputes, disputes) &&
            const DeepCollectionEquality().equals(other.dispute, dispute));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(disputes),
      const DeepCollectionEquality().hash(dispute));

  @JsonKey(ignore: true)
  @override
  _$DisputesStateCopyWith<_DisputesState> get copyWith =>
      __$DisputesStateCopyWithImpl<_DisputesState>(this, _$identity);
}

abstract class _DisputesState implements DisputesState {
  const factory _DisputesState(
      {required bool isLoading,
      required List<Dispute> disputes,
      required Dispute dispute}) = _$_DisputesState;

  @override
  bool get isLoading;
  @override
  List<Dispute> get disputes;
  @override
  Dispute get dispute;
  @override
  @JsonKey(ignore: true)
  _$DisputesStateCopyWith<_DisputesState> get copyWith =>
      throw _privateConstructorUsedError;
}
