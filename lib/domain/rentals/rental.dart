import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'package:uuid/uuid.dart';

part 'rental.freezed.dart';

enum PaymentMethod {
  token,
  bitcoin, 
  ether, 
  eurs
}

extension PaymentMethodEnumEx on String {
  PaymentMethod toPaymentMethod() => PaymentMethod.values.firstWhere((d) => d.name == toLowerCase());
}

@freezed
abstract class Rental implements _$Rental {
  const Rental._();

  const factory Rental({
    required String uuid,
    required String homeId,
    required String hostId,
    required String guestId,
    required String paymentMethod,
    required DateTime checkIn,
    required DateTime checkOut,
    required int numAdults,
    required int numChildren,
    required int numPets,
  }) = _Rental;

  factory Rental.empty() => Rental(
    uuid: const Uuid().v1().toString(),
    homeId: '',
    hostId: '',
    guestId: '',
    paymentMethod: '',
    checkIn: DateTime.now(),
    checkOut: DateTime.now(),
    numAdults: 0,
    numChildren: 0,
    numPets: 0,
  );

  bool isRentalActive(DateTime currentDate) {
    return checkIn.isBefore(currentDate) && checkOut.isAfter(currentDate);
  }

  int nightsBetween() {
    DateTime from = DateTime(checkIn.year, checkIn.month, checkIn.day);
    DateTime to = DateTime(checkOut.year, checkOut.month, checkOut.day);
    return (to.difference(from).inHours / 24).round();
  }

  double totalPrice(double pricePerNight) {
    return (nightsBetween() * pricePerNight) + 3;
  }

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

  String getDateString() {
    return checkIn.day.toString() + "/" + checkIn.month.toString() + "/" + checkIn.year.toString() + " - " + checkOut.day.toString() + "/" + checkOut.month.toString() + "/" + checkOut.year.toString();
  }
}
