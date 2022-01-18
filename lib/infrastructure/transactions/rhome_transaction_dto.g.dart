// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rhome_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RhomeTransactionDto _$$_RhomeTransactionDtoFromJson(
        Map<String, dynamic> json) =>
    _$_RhomeTransactionDto(
      uuid: json['uuid'] as String,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      senderUsername: json['senderUsername'] as String,
      receiverUsername: json['receiverUsername'] as String,
      paymentMethod: json['paymentMethod'] as String,
      amount: (json['amount'] as num).toDouble(),
      type: json['type'] as String,
      ts: firestoreTimestampFromJson(json['ts']),
    );

Map<String, dynamic> _$$_RhomeTransactionDtoToJson(
        _$_RhomeTransactionDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'senderUsername': instance.senderUsername,
      'receiverUsername': instance.receiverUsername,
      'paymentMethod': instance.paymentMethod,
      'amount': instance.amount,
      'type': instance.type,
      'ts': firestoreTimestampToJson(instance.ts),
    };
