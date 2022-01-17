// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rhome_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RhomeTransactionTearOff {
  const _$RhomeTransactionTearOff();

  _RhomeTransaction call(
      {required String uuid,
      required String senderId,
      required String receiverId,
      required String senderUsername,
      required String receiverUsername,
      required String paymentMethod,
      required double amount,
      required String type}) {
    return _RhomeTransaction(
      uuid: uuid,
      senderId: senderId,
      receiverId: receiverId,
      senderUsername: senderUsername,
      receiverUsername: receiverUsername,
      paymentMethod: paymentMethod,
      amount: amount,
      type: type,
    );
  }
}

/// @nodoc
const $RhomeTransaction = _$RhomeTransactionTearOff();

/// @nodoc
mixin _$RhomeTransaction {
  String get uuid => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get senderUsername => throw _privateConstructorUsedError;
  String get receiverUsername => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RhomeTransactionCopyWith<RhomeTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RhomeTransactionCopyWith<$Res> {
  factory $RhomeTransactionCopyWith(
          RhomeTransaction value, $Res Function(RhomeTransaction) then) =
      _$RhomeTransactionCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String senderId,
      String receiverId,
      String senderUsername,
      String receiverUsername,
      String paymentMethod,
      double amount,
      String type});
}

/// @nodoc
class _$RhomeTransactionCopyWithImpl<$Res>
    implements $RhomeTransactionCopyWith<$Res> {
  _$RhomeTransactionCopyWithImpl(this._value, this._then);

  final RhomeTransaction _value;
  // ignore: unused_field
  final $Res Function(RhomeTransaction) _then;

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
    ));
  }
}

/// @nodoc
abstract class _$RhomeTransactionCopyWith<$Res>
    implements $RhomeTransactionCopyWith<$Res> {
  factory _$RhomeTransactionCopyWith(
          _RhomeTransaction value, $Res Function(_RhomeTransaction) then) =
      __$RhomeTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String senderId,
      String receiverId,
      String senderUsername,
      String receiverUsername,
      String paymentMethod,
      double amount,
      String type});
}

/// @nodoc
class __$RhomeTransactionCopyWithImpl<$Res>
    extends _$RhomeTransactionCopyWithImpl<$Res>
    implements _$RhomeTransactionCopyWith<$Res> {
  __$RhomeTransactionCopyWithImpl(
      _RhomeTransaction _value, $Res Function(_RhomeTransaction) _then)
      : super(_value, (v) => _then(v as _RhomeTransaction));

  @override
  _RhomeTransaction get _value => super._value as _RhomeTransaction;

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
  }) {
    return _then(_RhomeTransaction(
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
    ));
  }
}

/// @nodoc

class _$_RhomeTransaction extends _RhomeTransaction {
  const _$_RhomeTransaction(
      {required this.uuid,
      required this.senderId,
      required this.receiverId,
      required this.senderUsername,
      required this.receiverUsername,
      required this.paymentMethod,
      required this.amount,
      required this.type})
      : super._();

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
  String toString() {
    return 'RhomeTransaction(uuid: $uuid, senderId: $senderId, receiverId: $receiverId, senderUsername: $senderUsername, receiverUsername: $receiverUsername, paymentMethod: $paymentMethod, amount: $amount, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RhomeTransaction &&
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
            const DeepCollectionEquality().equals(other.type, type));
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
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$RhomeTransactionCopyWith<_RhomeTransaction> get copyWith =>
      __$RhomeTransactionCopyWithImpl<_RhomeTransaction>(this, _$identity);
}

abstract class _RhomeTransaction extends RhomeTransaction {
  const factory _RhomeTransaction(
      {required String uuid,
      required String senderId,
      required String receiverId,
      required String senderUsername,
      required String receiverUsername,
      required String paymentMethod,
      required double amount,
      required String type}) = _$_RhomeTransaction;
  const _RhomeTransaction._() : super._();

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
  @JsonKey(ignore: true)
  _$RhomeTransactionCopyWith<_RhomeTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
