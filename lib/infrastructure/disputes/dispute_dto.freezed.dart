// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dispute_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DisputeDto _$DisputeDtoFromJson(Map<String, dynamic> json) {
  return _DisputeDto.fromJson(json);
}

/// @nodoc
class _$DisputeDtoTearOff {
  const _$DisputeDtoTearOff();

  _DisputeDto call(
      {required String uuid,
      required String issuerUuid,
      required String issuerUsername,
      required String title,
      required String descritption,
      required String homeUuid,
      required String rentalUuid,
      required double initialStake,
      required String category,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp creationDate,
      required String mainImageUrl,
      required List<String> usersVotedInFavour,
      required List<String> usersVotedIrrelevent,
      required List<String> usersVotedAgainst}) {
    return _DisputeDto(
      uuid: uuid,
      issuerUuid: issuerUuid,
      issuerUsername: issuerUsername,
      title: title,
      descritption: descritption,
      homeUuid: homeUuid,
      rentalUuid: rentalUuid,
      initialStake: initialStake,
      category: category,
      creationDate: creationDate,
      mainImageUrl: mainImageUrl,
      usersVotedInFavour: usersVotedInFavour,
      usersVotedIrrelevent: usersVotedIrrelevent,
      usersVotedAgainst: usersVotedAgainst,
    );
  }

  DisputeDto fromJson(Map<String, Object?> json) {
    return DisputeDto.fromJson(json);
  }
}

/// @nodoc
const $DisputeDto = _$DisputeDtoTearOff();

/// @nodoc
mixin _$DisputeDto {
  String get uuid => throw _privateConstructorUsedError;
  String get issuerUuid => throw _privateConstructorUsedError;
  String get issuerUsername => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get descritption => throw _privateConstructorUsedError;
  String get homeUuid => throw _privateConstructorUsedError;
  String get rentalUuid => throw _privateConstructorUsedError;
  double get initialStake => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get creationDate => throw _privateConstructorUsedError;
  String get mainImageUrl => throw _privateConstructorUsedError;
  List<String> get usersVotedInFavour => throw _privateConstructorUsedError;
  List<String> get usersVotedIrrelevent => throw _privateConstructorUsedError;
  List<String> get usersVotedAgainst => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisputeDtoCopyWith<DisputeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeDtoCopyWith<$Res> {
  factory $DisputeDtoCopyWith(
          DisputeDto value, $Res Function(DisputeDto) then) =
      _$DisputeDtoCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String issuerUuid,
      String issuerUsername,
      String title,
      String descritption,
      String homeUuid,
      String rentalUuid,
      double initialStake,
      String category,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp creationDate,
      String mainImageUrl,
      List<String> usersVotedInFavour,
      List<String> usersVotedIrrelevent,
      List<String> usersVotedAgainst});
}

/// @nodoc
class _$DisputeDtoCopyWithImpl<$Res> implements $DisputeDtoCopyWith<$Res> {
  _$DisputeDtoCopyWithImpl(this._value, this._then);

  final DisputeDto _value;
  // ignore: unused_field
  final $Res Function(DisputeDto) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? issuerUuid = freezed,
    Object? issuerUsername = freezed,
    Object? title = freezed,
    Object? descritption = freezed,
    Object? homeUuid = freezed,
    Object? rentalUuid = freezed,
    Object? initialStake = freezed,
    Object? category = freezed,
    Object? creationDate = freezed,
    Object? mainImageUrl = freezed,
    Object? usersVotedInFavour = freezed,
    Object? usersVotedIrrelevent = freezed,
    Object? usersVotedAgainst = freezed,
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
      initialStake: initialStake == freezed
          ? _value.initialStake
          : initialStake // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      mainImageUrl: mainImageUrl == freezed
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      usersVotedInFavour: usersVotedInFavour == freezed
          ? _value.usersVotedInFavour
          : usersVotedInFavour // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usersVotedIrrelevent: usersVotedIrrelevent == freezed
          ? _value.usersVotedIrrelevent
          : usersVotedIrrelevent // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usersVotedAgainst: usersVotedAgainst == freezed
          ? _value.usersVotedAgainst
          : usersVotedAgainst // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DisputeDtoCopyWith<$Res> implements $DisputeDtoCopyWith<$Res> {
  factory _$DisputeDtoCopyWith(
          _DisputeDto value, $Res Function(_DisputeDto) then) =
      __$DisputeDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String issuerUuid,
      String issuerUsername,
      String title,
      String descritption,
      String homeUuid,
      String rentalUuid,
      double initialStake,
      String category,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp creationDate,
      String mainImageUrl,
      List<String> usersVotedInFavour,
      List<String> usersVotedIrrelevent,
      List<String> usersVotedAgainst});
}

/// @nodoc
class __$DisputeDtoCopyWithImpl<$Res> extends _$DisputeDtoCopyWithImpl<$Res>
    implements _$DisputeDtoCopyWith<$Res> {
  __$DisputeDtoCopyWithImpl(
      _DisputeDto _value, $Res Function(_DisputeDto) _then)
      : super(_value, (v) => _then(v as _DisputeDto));

  @override
  _DisputeDto get _value => super._value as _DisputeDto;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? issuerUuid = freezed,
    Object? issuerUsername = freezed,
    Object? title = freezed,
    Object? descritption = freezed,
    Object? homeUuid = freezed,
    Object? rentalUuid = freezed,
    Object? initialStake = freezed,
    Object? category = freezed,
    Object? creationDate = freezed,
    Object? mainImageUrl = freezed,
    Object? usersVotedInFavour = freezed,
    Object? usersVotedIrrelevent = freezed,
    Object? usersVotedAgainst = freezed,
  }) {
    return _then(_DisputeDto(
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
      initialStake: initialStake == freezed
          ? _value.initialStake
          : initialStake // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      mainImageUrl: mainImageUrl == freezed
          ? _value.mainImageUrl
          : mainImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      usersVotedInFavour: usersVotedInFavour == freezed
          ? _value.usersVotedInFavour
          : usersVotedInFavour // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usersVotedIrrelevent: usersVotedIrrelevent == freezed
          ? _value.usersVotedIrrelevent
          : usersVotedIrrelevent // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usersVotedAgainst: usersVotedAgainst == freezed
          ? _value.usersVotedAgainst
          : usersVotedAgainst // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DisputeDto extends _DisputeDto {
  const _$_DisputeDto(
      {required this.uuid,
      required this.issuerUuid,
      required this.issuerUsername,
      required this.title,
      required this.descritption,
      required this.homeUuid,
      required this.rentalUuid,
      required this.initialStake,
      required this.category,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required this.creationDate,
      required this.mainImageUrl,
      required this.usersVotedInFavour,
      required this.usersVotedIrrelevent,
      required this.usersVotedAgainst})
      : super._();

  factory _$_DisputeDto.fromJson(Map<String, dynamic> json) =>
      _$$_DisputeDtoFromJson(json);

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
  final double initialStake;
  @override
  final String category;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  final Timestamp creationDate;
  @override
  final String mainImageUrl;
  @override
  final List<String> usersVotedInFavour;
  @override
  final List<String> usersVotedIrrelevent;
  @override
  final List<String> usersVotedAgainst;

  @override
  String toString() {
    return 'DisputeDto(uuid: $uuid, issuerUuid: $issuerUuid, issuerUsername: $issuerUsername, title: $title, descritption: $descritption, homeUuid: $homeUuid, rentalUuid: $rentalUuid, initialStake: $initialStake, category: $category, creationDate: $creationDate, mainImageUrl: $mainImageUrl, usersVotedInFavour: $usersVotedInFavour, usersVotedIrrelevent: $usersVotedIrrelevent, usersVotedAgainst: $usersVotedAgainst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisputeDto &&
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
            const DeepCollectionEquality()
                .equals(other.initialStake, initialStake) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality()
                .equals(other.mainImageUrl, mainImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.usersVotedInFavour, usersVotedInFavour) &&
            const DeepCollectionEquality()
                .equals(other.usersVotedIrrelevent, usersVotedIrrelevent) &&
            const DeepCollectionEquality()
                .equals(other.usersVotedAgainst, usersVotedAgainst));
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
      const DeepCollectionEquality().hash(initialStake),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(mainImageUrl),
      const DeepCollectionEquality().hash(usersVotedInFavour),
      const DeepCollectionEquality().hash(usersVotedIrrelevent),
      const DeepCollectionEquality().hash(usersVotedAgainst));

  @JsonKey(ignore: true)
  @override
  _$DisputeDtoCopyWith<_DisputeDto> get copyWith =>
      __$DisputeDtoCopyWithImpl<_DisputeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DisputeDtoToJson(this);
  }
}

abstract class _DisputeDto extends DisputeDto {
  const factory _DisputeDto(
      {required String uuid,
      required String issuerUuid,
      required String issuerUsername,
      required String title,
      required String descritption,
      required String homeUuid,
      required String rentalUuid,
      required double initialStake,
      required String category,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp creationDate,
      required String mainImageUrl,
      required List<String> usersVotedInFavour,
      required List<String> usersVotedIrrelevent,
      required List<String> usersVotedAgainst}) = _$_DisputeDto;
  const _DisputeDto._() : super._();

  factory _DisputeDto.fromJson(Map<String, dynamic> json) =
      _$_DisputeDto.fromJson;

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
  double get initialStake;
  @override
  String get category;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get creationDate;
  @override
  String get mainImageUrl;
  @override
  List<String> get usersVotedInFavour;
  @override
  List<String> get usersVotedIrrelevent;
  @override
  List<String> get usersVotedAgainst;
  @override
  @JsonKey(ignore: true)
  _$DisputeDtoCopyWith<_DisputeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
