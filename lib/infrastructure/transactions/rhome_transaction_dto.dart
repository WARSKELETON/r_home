import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/transactions/rhome_transaction.dart';

part 'rhome_transaction_dto.freezed.dart';
part 'rhome_transaction_dto.g.dart';

@freezed
abstract class RhomeTransactionDto implements _$RhomeTransactionDto {
  const RhomeTransactionDto._();

  const factory RhomeTransactionDto({
    required String uuid,
    required String senderId,
    required String receiverId,
    required String senderUsername,
    required String receiverUsername,
    required String paymentMethod,
    required double amount,
    required String type
  }) = _RhomeTransactionDto;

  factory RhomeTransactionDto.fromDomain(RhomeTransaction transaction) {
    return RhomeTransactionDto(
      uuid: transaction.uuid,
      senderId: transaction.senderId,
      receiverId: transaction.receiverId,
      senderUsername: transaction.senderUsername,
      receiverUsername: transaction.receiverUsername,
      paymentMethod: transaction.paymentMethod,
      amount: transaction.amount,
      type: transaction.type,
    );
  }

  RhomeTransaction toDomain() {
    return RhomeTransaction(
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

  factory RhomeTransactionDto.fromFirestore(DocumentSnapshot doc) {
    return RhomeTransactionDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory RhomeTransactionDto.fromFirestoreQueryDoc(QueryDocumentSnapshot doc) {
    return RhomeTransactionDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory RhomeTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$RhomeTransactionDtoFromJson(json);
}
