import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'rental.freezed.dart';

@freezed
abstract class Rental implements _$Rental {
  const Rental._();

  const factory Rental({
    required String uuid,
    required String homeId,
    required String hostId,
    required String guestId,
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
    checkIn: DateTime.now(),
    checkOut: DateTime.now(),
    numAdults: 0,
    numChildren: 0,
    numPets: 0,
  );
}
