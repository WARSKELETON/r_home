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

  HomeReceived homeReceived(Home home) {
    return HomeReceived(
      home,
    );
  }

  RentalReceived rentalReceived(Rental rental) {
    return RentalReceived(
      rental,
    );
  }

  VoteReceived voteReceived(DisputeVote vote) {
    return VoteReceived(
      vote,
    );
  }

  VoteSubmit voteSubmit(String userUuid) {
    return VoteSubmit(
      userUuid,
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
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(DisputesReceived value) disputesReceived,
    required TResult Function(WatchDispute value) watchDispute,
    required TResult Function(DisputeReceived value) disputeReceived,
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
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
abstract class $HomeReceivedCopyWith<$Res> {
  factory $HomeReceivedCopyWith(
          HomeReceived value, $Res Function(HomeReceived) then) =
      _$HomeReceivedCopyWithImpl<$Res>;
  $Res call({Home home});

  $HomeCopyWith<$Res> get home;
}

/// @nodoc
class _$HomeReceivedCopyWithImpl<$Res> extends _$DisputesEventCopyWithImpl<$Res>
    implements $HomeReceivedCopyWith<$Res> {
  _$HomeReceivedCopyWithImpl(
      HomeReceived _value, $Res Function(HomeReceived) _then)
      : super(_value, (v) => _then(v as HomeReceived));

  @override
  HomeReceived get _value => super._value as HomeReceived;

  @override
  $Res call({
    Object? home = freezed,
  }) {
    return _then(HomeReceived(
      home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
    ));
  }

  @override
  $HomeCopyWith<$Res> get home {
    return $HomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }
}

/// @nodoc

class _$HomeReceived implements HomeReceived {
  const _$HomeReceived(this.home);

  @override
  final Home home;

  @override
  String toString() {
    return 'DisputesEvent.homeReceived(home: $home)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeReceived &&
            const DeepCollectionEquality().equals(other.home, home));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(home));

  @JsonKey(ignore: true)
  @override
  $HomeReceivedCopyWith<HomeReceived> get copyWith =>
      _$HomeReceivedCopyWithImpl<HomeReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
  }) {
    return homeReceived(home);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
  }) {
    return homeReceived?.call(home);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
    required TResult orElse(),
  }) {
    if (homeReceived != null) {
      return homeReceived(home);
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
  }) {
    return homeReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
  }) {
    return homeReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
    required TResult orElse(),
  }) {
    if (homeReceived != null) {
      return homeReceived(this);
    }
    return orElse();
  }
}

abstract class HomeReceived implements DisputesEvent {
  const factory HomeReceived(Home home) = _$HomeReceived;

  Home get home;
  @JsonKey(ignore: true)
  $HomeReceivedCopyWith<HomeReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalReceivedCopyWith<$Res> {
  factory $RentalReceivedCopyWith(
          RentalReceived value, $Res Function(RentalReceived) then) =
      _$RentalReceivedCopyWithImpl<$Res>;
  $Res call({Rental rental});

  $RentalCopyWith<$Res> get rental;
}

/// @nodoc
class _$RentalReceivedCopyWithImpl<$Res>
    extends _$DisputesEventCopyWithImpl<$Res>
    implements $RentalReceivedCopyWith<$Res> {
  _$RentalReceivedCopyWithImpl(
      RentalReceived _value, $Res Function(RentalReceived) _then)
      : super(_value, (v) => _then(v as RentalReceived));

  @override
  RentalReceived get _value => super._value as RentalReceived;

  @override
  $Res call({
    Object? rental = freezed,
  }) {
    return _then(RentalReceived(
      rental == freezed
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
    ));
  }

  @override
  $RentalCopyWith<$Res> get rental {
    return $RentalCopyWith<$Res>(_value.rental, (value) {
      return _then(_value.copyWith(rental: value));
    });
  }
}

/// @nodoc

class _$RentalReceived implements RentalReceived {
  const _$RentalReceived(this.rental);

  @override
  final Rental rental;

  @override
  String toString() {
    return 'DisputesEvent.rentalReceived(rental: $rental)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RentalReceived &&
            const DeepCollectionEquality().equals(other.rental, rental));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rental));

  @JsonKey(ignore: true)
  @override
  $RentalReceivedCopyWith<RentalReceived> get copyWith =>
      _$RentalReceivedCopyWithImpl<RentalReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
  }) {
    return rentalReceived(rental);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
  }) {
    return rentalReceived?.call(rental);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
    required TResult orElse(),
  }) {
    if (rentalReceived != null) {
      return rentalReceived(rental);
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
  }) {
    return rentalReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
  }) {
    return rentalReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
    required TResult orElse(),
  }) {
    if (rentalReceived != null) {
      return rentalReceived(this);
    }
    return orElse();
  }
}

abstract class RentalReceived implements DisputesEvent {
  const factory RentalReceived(Rental rental) = _$RentalReceived;

  Rental get rental;
  @JsonKey(ignore: true)
  $RentalReceivedCopyWith<RentalReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteReceivedCopyWith<$Res> {
  factory $VoteReceivedCopyWith(
          VoteReceived value, $Res Function(VoteReceived) then) =
      _$VoteReceivedCopyWithImpl<$Res>;
  $Res call({DisputeVote vote});
}

/// @nodoc
class _$VoteReceivedCopyWithImpl<$Res> extends _$DisputesEventCopyWithImpl<$Res>
    implements $VoteReceivedCopyWith<$Res> {
  _$VoteReceivedCopyWithImpl(
      VoteReceived _value, $Res Function(VoteReceived) _then)
      : super(_value, (v) => _then(v as VoteReceived));

  @override
  VoteReceived get _value => super._value as VoteReceived;

  @override
  $Res call({
    Object? vote = freezed,
  }) {
    return _then(VoteReceived(
      vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as DisputeVote,
    ));
  }
}

/// @nodoc

class _$VoteReceived implements VoteReceived {
  const _$VoteReceived(this.vote);

  @override
  final DisputeVote vote;

  @override
  String toString() {
    return 'DisputesEvent.voteReceived(vote: $vote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VoteReceived &&
            const DeepCollectionEquality().equals(other.vote, vote));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(vote));

  @JsonKey(ignore: true)
  @override
  $VoteReceivedCopyWith<VoteReceived> get copyWith =>
      _$VoteReceivedCopyWithImpl<VoteReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
  }) {
    return voteReceived(vote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
  }) {
    return voteReceived?.call(vote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
    required TResult orElse(),
  }) {
    if (voteReceived != null) {
      return voteReceived(vote);
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
  }) {
    return voteReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
  }) {
    return voteReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
    required TResult orElse(),
  }) {
    if (voteReceived != null) {
      return voteReceived(this);
    }
    return orElse();
  }
}

abstract class VoteReceived implements DisputesEvent {
  const factory VoteReceived(DisputeVote vote) = _$VoteReceived;

  DisputeVote get vote;
  @JsonKey(ignore: true)
  $VoteReceivedCopyWith<VoteReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteSubmitCopyWith<$Res> {
  factory $VoteSubmitCopyWith(
          VoteSubmit value, $Res Function(VoteSubmit) then) =
      _$VoteSubmitCopyWithImpl<$Res>;
  $Res call({String userUuid});
}

/// @nodoc
class _$VoteSubmitCopyWithImpl<$Res> extends _$DisputesEventCopyWithImpl<$Res>
    implements $VoteSubmitCopyWith<$Res> {
  _$VoteSubmitCopyWithImpl(VoteSubmit _value, $Res Function(VoteSubmit) _then)
      : super(_value, (v) => _then(v as VoteSubmit));

  @override
  VoteSubmit get _value => super._value as VoteSubmit;

  @override
  $Res call({
    Object? userUuid = freezed,
  }) {
    return _then(VoteSubmit(
      userUuid == freezed
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VoteSubmit implements VoteSubmit {
  const _$VoteSubmit(this.userUuid);

  @override
  final String userUuid;

  @override
  String toString() {
    return 'DisputesEvent.voteSubmit(userUuid: $userUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VoteSubmit &&
            const DeepCollectionEquality().equals(other.userUuid, userUuid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userUuid));

  @JsonKey(ignore: true)
  @override
  $VoteSubmitCopyWith<VoteSubmit> get copyWith =>
      _$VoteSubmitCopyWithImpl<VoteSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool allDisputes) initialize,
    required TResult Function(List<Dispute> disputes) disputesReceived,
    required TResult Function(String disputeUuid) watchDispute,
    required TResult Function(Dispute dispute) disputeReceived,
    required TResult Function(Home home) homeReceived,
    required TResult Function(Rental rental) rentalReceived,
    required TResult Function(DisputeVote vote) voteReceived,
    required TResult Function(String userUuid) voteSubmit,
  }) {
    return voteSubmit(userUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
  }) {
    return voteSubmit?.call(userUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool allDisputes)? initialize,
    TResult Function(List<Dispute> disputes)? disputesReceived,
    TResult Function(String disputeUuid)? watchDispute,
    TResult Function(Dispute dispute)? disputeReceived,
    TResult Function(Home home)? homeReceived,
    TResult Function(Rental rental)? rentalReceived,
    TResult Function(DisputeVote vote)? voteReceived,
    TResult Function(String userUuid)? voteSubmit,
    required TResult orElse(),
  }) {
    if (voteSubmit != null) {
      return voteSubmit(userUuid);
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
    required TResult Function(HomeReceived value) homeReceived,
    required TResult Function(RentalReceived value) rentalReceived,
    required TResult Function(VoteReceived value) voteReceived,
    required TResult Function(VoteSubmit value) voteSubmit,
  }) {
    return voteSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
  }) {
    return voteSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(DisputesReceived value)? disputesReceived,
    TResult Function(WatchDispute value)? watchDispute,
    TResult Function(DisputeReceived value)? disputeReceived,
    TResult Function(HomeReceived value)? homeReceived,
    TResult Function(RentalReceived value)? rentalReceived,
    TResult Function(VoteReceived value)? voteReceived,
    TResult Function(VoteSubmit value)? voteSubmit,
    required TResult orElse(),
  }) {
    if (voteSubmit != null) {
      return voteSubmit(this);
    }
    return orElse();
  }
}

abstract class VoteSubmit implements DisputesEvent {
  const factory VoteSubmit(String userUuid) = _$VoteSubmit;

  String get userUuid;
  @JsonKey(ignore: true)
  $VoteSubmitCopyWith<VoteSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DisputesStateTearOff {
  const _$DisputesStateTearOff();

  _DisputesState call(
      {required bool isLoading,
      required List<Dispute> disputes,
      required Dispute dispute,
      required Home home,
      required DomainUser host,
      required DisputeVote currentVote,
      required Rental rental}) {
    return _DisputesState(
      isLoading: isLoading,
      disputes: disputes,
      dispute: dispute,
      home: home,
      host: host,
      currentVote: currentVote,
      rental: rental,
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
  Home get home => throw _privateConstructorUsedError;
  DomainUser get host => throw _privateConstructorUsedError;
  DisputeVote get currentVote => throw _privateConstructorUsedError;
  Rental get rental => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisputesStateCopyWith<DisputesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputesStateCopyWith<$Res> {
  factory $DisputesStateCopyWith(
          DisputesState value, $Res Function(DisputesState) then) =
      _$DisputesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Dispute> disputes,
      Dispute dispute,
      Home home,
      DomainUser host,
      DisputeVote currentVote,
      Rental rental});

  $DisputeCopyWith<$Res> get dispute;
  $HomeCopyWith<$Res> get home;
  $DomainUserCopyWith<$Res> get host;
  $RentalCopyWith<$Res> get rental;
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
    Object? home = freezed,
    Object? host = freezed,
    Object? currentVote = freezed,
    Object? rental = freezed,
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
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      currentVote: currentVote == freezed
          ? _value.currentVote
          : currentVote // ignore: cast_nullable_to_non_nullable
              as DisputeVote,
      rental: rental == freezed
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
    ));
  }

  @override
  $DisputeCopyWith<$Res> get dispute {
    return $DisputeCopyWith<$Res>(_value.dispute, (value) {
      return _then(_value.copyWith(dispute: value));
    });
  }

  @override
  $HomeCopyWith<$Res> get home {
    return $HomeCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }

  @override
  $DomainUserCopyWith<$Res> get host {
    return $DomainUserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }

  @override
  $RentalCopyWith<$Res> get rental {
    return $RentalCopyWith<$Res>(_value.rental, (value) {
      return _then(_value.copyWith(rental: value));
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
  $Res call(
      {bool isLoading,
      List<Dispute> disputes,
      Dispute dispute,
      Home home,
      DomainUser host,
      DisputeVote currentVote,
      Rental rental});

  @override
  $DisputeCopyWith<$Res> get dispute;
  @override
  $HomeCopyWith<$Res> get home;
  @override
  $DomainUserCopyWith<$Res> get host;
  @override
  $RentalCopyWith<$Res> get rental;
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
    Object? home = freezed,
    Object? host = freezed,
    Object? currentVote = freezed,
    Object? rental = freezed,
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
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as DomainUser,
      currentVote: currentVote == freezed
          ? _value.currentVote
          : currentVote // ignore: cast_nullable_to_non_nullable
              as DisputeVote,
      rental: rental == freezed
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
    ));
  }
}

/// @nodoc

class _$_DisputesState implements _DisputesState {
  const _$_DisputesState(
      {required this.isLoading,
      required this.disputes,
      required this.dispute,
      required this.home,
      required this.host,
      required this.currentVote,
      required this.rental});

  @override
  final bool isLoading;
  @override
  final List<Dispute> disputes;
  @override
  final Dispute dispute;
  @override
  final Home home;
  @override
  final DomainUser host;
  @override
  final DisputeVote currentVote;
  @override
  final Rental rental;

  @override
  String toString() {
    return 'DisputesState(isLoading: $isLoading, disputes: $disputes, dispute: $dispute, home: $home, host: $host, currentVote: $currentVote, rental: $rental)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisputesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.disputes, disputes) &&
            const DeepCollectionEquality().equals(other.dispute, dispute) &&
            const DeepCollectionEquality().equals(other.home, home) &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality()
                .equals(other.currentVote, currentVote) &&
            const DeepCollectionEquality().equals(other.rental, rental));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(disputes),
      const DeepCollectionEquality().hash(dispute),
      const DeepCollectionEquality().hash(home),
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(currentVote),
      const DeepCollectionEquality().hash(rental));

  @JsonKey(ignore: true)
  @override
  _$DisputesStateCopyWith<_DisputesState> get copyWith =>
      __$DisputesStateCopyWithImpl<_DisputesState>(this, _$identity);
}

abstract class _DisputesState implements DisputesState {
  const factory _DisputesState(
      {required bool isLoading,
      required List<Dispute> disputes,
      required Dispute dispute,
      required Home home,
      required DomainUser host,
      required DisputeVote currentVote,
      required Rental rental}) = _$_DisputesState;

  @override
  bool get isLoading;
  @override
  List<Dispute> get disputes;
  @override
  Dispute get dispute;
  @override
  Home get home;
  @override
  DomainUser get host;
  @override
  DisputeVote get currentVote;
  @override
  Rental get rental;
  @override
  @JsonKey(ignore: true)
  _$DisputesStateCopyWith<_DisputesState> get copyWith =>
      throw _privateConstructorUsedError;
}
