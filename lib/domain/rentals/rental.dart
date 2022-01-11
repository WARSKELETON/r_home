import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'rental.freezed.dart';

enum PaymentMethod {
  bitcoin, 
  ether, 
  token, 
  eurs
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

  String getDateString() {
    return checkIn.day.toString() + "/" + checkIn.month.toString() + "/" + checkIn.year.toString() + " - " + checkOut.day.toString() + "/" + checkOut.month.toString() + "/" + checkOut.year.toString();
  }
}
