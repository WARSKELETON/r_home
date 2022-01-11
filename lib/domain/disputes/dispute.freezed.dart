// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dispute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DisputeTearOff {
  const _$DisputeTearOff();

  _Dispute call(
      {required String uuid,
      required String issuerUuid,
      required String issuerUsername,
      required String title,
      required String descritption,
      required String homeUuid,
      required String rentalUuid,
      required bool isOpened,
      required int votesAgainst,
      required int votesIndiferent,
      required int votesInFavour,
      required double initialStake,
      required double stake,
      required String category}) {
    return _Dispute(
      uuid: uuid,
      issuerUuid: issuerUuid,
      issuerUsername: issuerUsername,
      title: title,
      descritption: descritption,
      homeUuid: homeUuid,
      rentalUuid: rentalUuid,
      isOpened: isOpened,
      votesAgainst: votesAgainst,
      votesIndiferent: votesIndiferent,
      votesInFavour: votesInFavour,
      initialStake: initialStake,
      stake: stake,
      category: category,
    );
  }
}

/// @nodoc
const $Dispute = _$DisputeTearOff();

/// @nodoc
mixin _$Dispute {
  String get uuid => throw _privateConstructorUsedError;
  String get issuerUuid => throw _privateConstructorUsedError;
  String get issuerUsername => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get descritption => throw _privateConstructorUsedError;
  String get homeUuid => throw _privateConstructorUsedError;
  String get rentalUuid => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  int get votesAgainst => throw _privateConstructorUsedError;
  int get votesIndiferent => throw _privateConstructorUsedError;
  int get votesInFavour => throw _privateConstructorUsedError;
  double get initialStake => throw _privateConstructorUsedError;
  double get stake => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisputeCopyWith<Dispute> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeCopyWith<$Res> {
  factory $DisputeCopyWith(Dispute value, $Res Function(Dispute) then) =
      _$DisputeCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String issuerUuid,
      String issuerUsername,
      String title,
      String descritption,
      String homeUuid,
      String rentalUuid,
      bool isOpened,
      int votesAgainst,
      int votesIndiferent,
      int votesInFavour,
      double initialStake,
      double stake,
      String category});
}

/// @nodoc
class _$DisputeCopyWithImpl<$Res> implements $DisputeCopyWith<$Res> {
  _$DisputeCopyWithImpl(this._value, this._then);

  final Dispute _value;
  // ignore: unused_field
  final $Res Function(Dispute) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? issuerUuid = freezed,
    Object? issuerUsername = freezed,
    Object? title = freezed,
    Object? descritption = freezed,
    Object? homeUuid = freezed,
    Object? rentalUuid = freezed,
    Object? isOpened = freezed,
    Object? votesAgainst = freezed,
    Object? votesIndiferent = freezed,
    Object? votesInFavour = freezed,
    Object? initialStake = freezed,
    Object? stake = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      issuerUuid: issuerUuid == freezed
          ? _value.issuerUuid
          : issuerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      issuerUsername: issuerUsername == freezed
          ? _value.issuerUsername
          : issuerUsername // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      descritption: descritption == freezed
          ? _value.descritption
          : descritption // ignore: cast_nullable_to_non_nullable
              as String,
      homeUuid: homeUuid == freezed
          ? _value.homeUuid
          : homeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      rentalUuid: rentalUuid == freezed
          ? _value.rentalUuid
          : rentalUuid // ignore: cast_nullable_to_non_nullable
              as String,
      isOpened: isOpened == freezed
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      votesAgainst: votesAgainst == freezed
          ? _value.votesAgainst
          : votesAgainst // ignore: cast_nullable_to_non_nullable
              as int,
      votesIndiferent: votesIndiferent == freezed
          ? _value.votesIndiferent
          : votesIndiferent // ignore: cast_nullable_to_non_nullable
              as int,
      votesInFavour: votesInFavour == freezed
          ? _value.votesInFavour
          : votesInFavour // ignore: cast_nullable_to_non_nullable
              as int,
      initialStake: initialStake == freezed
          ? _value.initialStake
          : initialStake // ignore: cast_nullable_to_non_nullable
              as double,
      stake: stake == freezed
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DisputeCopyWith<$Res> implements $DisputeCopyWith<$Res> {
  factory _$DisputeCopyWith(_Dispute value, $Res Function(_Dispute) then) =
      __$DisputeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String issuerUuid,
      String issuerUsername,
      String title,
      String descritption,
      String homeUuid,
      String rentalUuid,
      bool isOpened,
      int votesAgainst,
      int votesIndiferent,
      int votesInFavour,
      double initialStake,
      double stake,
      String category});
}

/// @nodoc
class __$DisputeCopyWithImpl<$Res> extends _$DisputeCopyWithImpl<$Res>
    implements _$DisputeCopyWith<$Res> {
  __$DisputeCopyWithImpl(_Dispute _value, $Res Function(_Dispute) _then)
      : super(_value, (v) => _then(v as _Dispute));

  @override
  _Dispute get _value => super._value as _Dispute;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? issuerUuid = freezed,
    Object? issuerUsername = freezed,
    Object? title = freezed,
    Object? descritption = freezed,
    Object? homeUuid = freezed,
    Object? rentalUuid = freezed,
    Object? isOpened = freezed,
    Object? votesAgainst = freezed,
    Object? votesIndiferent = freezed,
    Object? votesInFavour = freezed,
    Object? initialStake = freezed,
    Object? stake = freezed,
    Object? category = freezed,
  }) {
    return _then(_Dispute(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      issuerUuid: issuerUuid == freezed
          ? _value.issuerUuid
          : issuerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      issuerUsername: issuerUsername == freezed
          ? _value.issuerUsername
          : issuerUsername // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      descritption: descritption == freezed
          ? _value.descritption
          : descritption // ignore: cast_nullable_to_non_nullable
              as String,
      homeUuid: homeUuid == freezed
          ? _value.homeUuid
          : homeUuid // ignore: cast_nullable_to_non_nullable
              as String,
      rentalUuid: rentalUuid == freezed
          ? _value.rentalUuid
          : rentalUuid // ignore: cast_nullable_to_non_nullable
              as String,
      isOpened: isOpened == freezed
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      votesAgainst: votesAgainst == freezed
          ? _value.votesAgainst
          : votesAgainst // ignore: cast_nullable_to_non_nullable
              as int,
      votesIndiferent: votesIndiferent == freezed
          ? _value.votesIndiferent
          : votesIndiferent // ignore: cast_nullable_to_non_nullable
              as int,
      votesInFavour: votesInFavour == freezed
          ? _value.votesInFavour
          : votesInFavour // ignore: cast_nullable_to_non_nullable
              as int,
      initialStake: initialStake == freezed
          ? _value.initialStake
          : initialStake // ignore: cast_nullable_to_non_nullable
              as double,
      stake: stake == freezed
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Dispute extends _Dispute {
  const _$_Dispute(
      {required this.uuid,
      required this.issuerUuid,
      required this.issuerUsername,
      required this.title,
      required this.descritption,
      required this.homeUuid,
      required this.rentalUuid,
      required this.isOpened,
      required this.votesAgainst,
      required this.votesIndiferent,
      required this.votesInFavour,
      required this.initialStake,
      required this.stake,
      required this.category})
      : super._();

  @override
  final String uuid;
  @override
  final String issuerUuid;
  @override
  final String issuerUsername;
  @override
  final String title;
  @override
  final String descritption;
  @override
  final String homeUuid;
  @override
  final String rentalUuid;
  @override
  final bool isOpened;
  @override
  final int votesAgainst;
  @override
  final int votesIndiferent;
  @override
  final int votesInFavour;
  @override
  final double initialStake;
  @override
  final double stake;
  @override
  final String category;

  @override
  String toString() {
    return 'Dispute(uuid: $uuid, issuerUuid: $issuerUuid, issuerUsername: $issuerUsername, title: $title, descritption: $descritption, homeUuid: $homeUuid, rentalUuid: $rentalUuid, isOpened: $isOpened, votesAgainst: $votesAgainst, votesIndiferent: $votesIndiferent, votesInFavour: $votesInFavour, initialStake: $initialStake, stake: $stake, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dispute &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.issuerUuid, issuerUuid) &&
            const DeepCollectionEquality()
                .equals(other.issuerUsername, issuerUsername) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.descritption, descritption) &&
            const DeepCollectionEquality().equals(other.homeUuid, homeUuid) &&
            const DeepCollectionEquality()
                .equals(other.rentalUuid, rentalUuid) &&
            const DeepCollectionEquality().equals(other.isOpened, isOpened) &&
            const DeepCollectionEquality()
                .equals(other.votesAgainst, votesAgainst) &&
            const DeepCollectionEquality()
                .equals(other.votesIndiferent, votesIndiferent) &&
            const DeepCollectionEquality()
                .equals(other.votesInFavour, votesInFavour) &&
            const DeepCollectionEquality()
                .equals(other.initialStake, initialStake) &&
            const DeepCollectionEquality().equals(other.stake, stake) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(issuerUuid),
      const DeepCollectionEquality().hash(issuerUsername),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(descritption),
      const DeepCollectionEquality().hash(homeUuid),
      const DeepCollectionEquality().hash(rentalUuid),
      const DeepCollectionEquality().hash(isOpened),
      const DeepCollectionEquality().hash(votesAgainst),
      const DeepCollectionEquality().hash(votesIndiferent),
      const DeepCollectionEquality().hash(votesInFavour),
      const DeepCollectionEquality().hash(initialStake),
      const DeepCollectionEquality().hash(stake),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$DisputeCopyWith<_Dispute> get copyWith =>
      __$DisputeCopyWithImpl<_Dispute>(this, _$identity);
}

abstract class _Dispute extends Dispute {
  const factory _Dispute(
      {required String uuid,
      required String issuerUuid,
      required String issuerUsername,
      required String title,
      required String descritption,
      required String homeUuid,
      required String rentalUuid,
      required bool isOpened,
      required int votesAgainst,
      required int votesIndiferent,
      required int votesInFavour,
      required double initialStake,
      required double stake,
      required String category}) = _$_Dispute;
  const _Dispute._() : super._();

  @override
  String get uuid;
  @override
  String get issuerUuid;
  @override
  String get issuerUsername;
  @override
  String get title;
  @override
  String get descritption;
  @override
  String get homeUuid;
  @override
  String get rentalUuid;
  @override
  bool get isOpened;
  @override
  int get votesAgainst;
  @override
  int get votesIndiferent;
  @override
  int get votesInFavour;
  @override
  double get initialStake;
  @override
  double get stake;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$DisputeCopyWith<_Dispute> get copyWith =>
      throw _privateConstructorUsedError;
}