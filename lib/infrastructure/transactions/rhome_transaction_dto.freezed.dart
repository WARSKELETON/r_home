// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rhome_transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RhomeTransactionDto _$RhomeTransactionDtoFromJson(Map<String, dynamic> json) {
  return _RhomeTransactionDto.fromJson(json);
}

/// @nodoc
class _$RhomeTransactionDtoTearOff {
  const _$RhomeTransactionDtoTearOff();

  _RhomeTransactionDto call(
      {required String uuid,
      required String senderId,
      required String receiverId,
      required String senderUsername,
      required String receiverUsername,
      required String paymentMethod,
      required double amount,
      required String type,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp ts}) {
    return _RhomeTransactionDto(
      uuid: uuid,
      senderId: senderId,
      receiverId: receiverId,
      senderUsername: senderUsername,
      receiverUsername: receiverUsername,
      paymentMethod: paymentMethod,
      amount: amount,
      type: type,
      ts: ts,
    );
  }

  RhomeTransactionDto fromJson(Map<String, Object?> json) {
    return RhomeTransactionDto.fromJson(json);
  }
}

/// @nodoc
const $RhomeTransactionDto = _$RhomeTransactionDtoTearOff();

/// @nodoc
mixin _$RhomeTransactionDto {
  String get uuid => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get senderUsername => throw _privateConstructorUsedError;
  String get receiverUsername => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get ts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RhomeTransactionDtoCopyWith<RhomeTransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RhomeTransactionDtoCopyWith<$Res> {
  factory $RhomeTransactionDtoCopyWith(
          RhomeTransactionDto value, $Res Function(RhomeTransactionDto) then) =
      _$RhomeTransactionDtoCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String senderId,
      String receiverId,
      String senderUsername,
      String receiverUsername,
      String paymentMethod,
      double amount,
      String type,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp ts});
}

/// @nodoc
class _$RhomeTransactionDtoCopyWithImpl<$Res>
    implements $RhomeTransactionDtoCopyWith<$Res> {
  _$RhomeTransactionDtoCopyWithImpl(this._value, this._then);

  final RhomeTransactionDto _value;
  // ignore: unused_field
  final $Res Function(RhomeTransactionDto) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? senderUsername = freezed,
    Object? receiverUsername = freezed,
    Object? paymentMethod = freezed,
    Object? amount = freezed,
    Object? type = freezed,
    Object? ts = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: senderUsername == freezed
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUsername: receiverUsername == freezed
          ? _value.receiverUsername
          : receiverUsername // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
abstract class _$RhomeTransactionDtoCopyWith<$Res>
    implements $RhomeTransactionDtoCopyWith<$Res> {
  factory _$RhomeTransactionDtoCopyWith(_RhomeTransactionDto value,
          $Res Function(_RhomeTransactionDto) then) =
      __$RhomeTransactionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String senderId,
      String receiverId,
      String senderUsername,
      String receiverUsername,
      String paymentMethod,
      double amount,
      String type,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          Timestamp ts});
}

/// @nodoc
class __$RhomeTransactionDtoCopyWithImpl<$Res>
    extends _$RhomeTransactionDtoCopyWithImpl<$Res>
    implements _$RhomeTransactionDtoCopyWith<$Res> {
  __$RhomeTransactionDtoCopyWithImpl(
      _RhomeTransactionDto _value, $Res Function(_RhomeTransactionDto) _then)
      : super(_value, (v) => _then(v as _RhomeTransactionDto));

  @override
  _RhomeTransactionDto get _value => super._value as _RhomeTransactionDto;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? senderUsername = freezed,
    Object? receiverUsername = freezed,
    Object? paymentMethod = freezed,
    Object? amount = freezed,
    Object? type = freezed,
    Object? ts = freezed,
  }) {
    return _then(_RhomeTransactionDto(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      senderUsername: senderUsername == freezed
          ? _value.senderUsername
          : senderUsername // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUsername: receiverUsername == freezed
          ? _value.receiverUsername
          : receiverUsername // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RhomeTransactionDto extends _RhomeTransactionDto {
  const _$_RhomeTransactionDto(
      {required this.uuid,
      required this.senderId,
      required this.receiverId,
      required this.senderUsername,
      required this.receiverUsername,
      required this.paymentMethod,
      required this.amount,
      required this.type,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required this.ts})
      : super._();

  factory _$_RhomeTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$$_RhomeTransactionDtoFromJson(json);

  @override
  final String uuid;
  @override
  final String senderId;
  @override
  final String receiverId;
  @override
  final String senderUsername;
  @override
  final String receiverUsername;
  @override
  final String paymentMethod;
  @override
  final double amount;
  @override
  final String type;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  final Timestamp ts;

  @override
  String toString() {
    return 'RhomeTransactionDto(uuid: $uuid, senderId: $senderId, receiverId: $receiverId, senderUsername: $senderUsername, receiverUsername: $receiverUsername, paymentMethod: $paymentMethod, amount: $amount, type: $type, ts: $ts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RhomeTransactionDto &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.senderId, senderId) &&
            const DeepCollectionEquality()
                .equals(other.receiverId, receiverId) &&
            const DeepCollectionEquality()
                .equals(other.senderUsername, senderUsername) &&
            const DeepCollectionEquality()
                .equals(other.receiverUsername, receiverUsername) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.ts, ts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(senderId),
      const DeepCollectionEquality().hash(receiverId),
      const DeepCollectionEquality().hash(senderUsername),
      const DeepCollectionEquality().hash(receiverUsername),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(ts));

  @JsonKey(ignore: true)
  @override
  _$RhomeTransactionDtoCopyWith<_RhomeTransactionDto> get copyWith =>
      __$RhomeTransactionDtoCopyWithImpl<_RhomeTransactionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RhomeTransactionDtoToJson(this);
  }
}

abstract class _RhomeTransactionDto extends RhomeTransactionDto {
  const factory _RhomeTransactionDto(
      {required String uuid,
      required String senderId,
      required String receiverId,
      required String senderUsername,
      required String receiverUsername,
      required String paymentMethod,
      required double amount,
      required String type,
      @JsonKey(fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
          required Timestamp ts}) = _$_RhomeTransactionDto;
  const _RhomeTransactionDto._() : super._();

  factory _RhomeTransactionDto.fromJson(Map<String, dynamic> json) =
      _$_RhomeTransactionDto.fromJson;

  @override
  String get uuid;
  @override
  String get senderId;
  @override
  String get receiverId;
  @override
  String get senderUsername;
  @override
  String get receiverUsername;
  @override
  String get paymentMethod;
  @override
  double get amount;
  @override
  String get type;
  @override
  @JsonKey(
      fromJson: firestoreTimestampFromJson, toJson: firestoreTimestampToJson)
  Timestamp get ts;
  @override
  @JsonKey(ignore: true)
  _$RhomeTransactionDtoCopyWith<_RhomeTransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
