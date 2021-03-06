import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'package:uuid/uuid.dart';
import 'package:r_home/presentation/core/string_extension.dart';

part 'rhome_transaction.freezed.dart';

enum TransactionType {
  reward_host,
  reward_guest,
  rental, 
  start_dispute,
  close_dispute, 
  vote
}

extension TransactionTypeEnumEx on String {
  TransactionType toTransactionType() => TransactionType.values.firstWhere((d) => d.name == toLowerCase());
}

@freezed
abstract class RhomeTransaction implements _$RhomeTransaction {
  const RhomeTransaction._();

  const factory RhomeTransaction({
    required String uuid,
    required String senderId,
    required String receiverId,
    required String senderUsername,
    required String receiverUsername,
    required String paymentMethod,
    required double amount,
    required String type,
    required DateTime ts
  }) = _RhomeTransaction;

  factory RhomeTransaction.empty() => RhomeTransaction(
    uuid: const Uuid().v1().toString(),
    senderId: '',
    receiverId: '',
    senderUsername: '',
    receiverUsername: '',
    paymentMethod: '',
    amount: 0,
    type: '',
    ts: DateTime.now()
  );

  IconData getPaymentMethodIcon() {
    if (paymentMethod != "") {
      final method = paymentMethod.toPaymentMethod();
      if (method == PaymentMethod.token) {
        return RHomeIcon.token;
      } else if (method == PaymentMethod.bitcoin) {
        return RHomeIcon.bitcoin;
      } else if (method == PaymentMethod.ether) {
        return RHomeIcon.ether;
      } else if (method == PaymentMethod.eurs) {
        return RHomeIcon.eurs;
      }
    }

    return RHomeIcon.token;
  }

  String getAmountString(String currentUserId) {
    return (currentUserId == senderId ? "-" : "+") + amount.toStringAsFixed(2) + " ${paymentMethod.capitalize()}";
  }

  String getDescription(String currentUserId) {
    final typeEnum = type.toTransactionType();
    String desc = "${getDateString()}\n";
    if (typeEnum == TransactionType.rental) {
      desc += "Home Rental";
    } else if (typeEnum == TransactionType.reward_guest) {
      desc += "Guest Reward";
    } else if (typeEnum == TransactionType.reward_host) {
      desc += "Host Reward";
    } else if (typeEnum == TransactionType.start_dispute) {
      desc += "Starting a Dispute";
    }  else if (typeEnum == TransactionType.close_dispute) {
      desc += "Winning a Dispute";
    } else if (typeEnum == TransactionType.vote) {
      desc += "Voting in a Dispute";
    }

    if (typeEnum != TransactionType.start_dispute && typeEnum != TransactionType.close_dispute && typeEnum != TransactionType.vote) {
      desc = desc + " with ${currentUserId == senderId ? receiverUsername : senderUsername}";
    }

    return desc;
  }

  String getDateString() {
    return ts.day.toString().padLeft(2, '0') + "/" + ts.month.toString().padLeft(2, '0') + "/" + ts.year.toString() + " " + ts.hour.toString().padLeft(2, '0') + ":" + ts.minute.toString().padLeft(2, '0');
  }
}
