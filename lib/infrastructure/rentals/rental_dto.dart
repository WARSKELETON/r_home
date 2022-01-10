import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'rental_dto.freezed.dart';
part 'rental_dto.g.dart';

@freezed
abstract class RentalDto implements _$RentalDto {
  const RentalDto._();

  const factory RentalDto({
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
  }) = _RentalDto;

  factory RentalDto.fromDomain(Rental rental) {
    return RentalDto(
      uuid: rental.uuid,
      homeId: rental.homeId,
      hostId: rental.hostId,
      guestId: rental.guestId,
      paymentMethod: rental.paymentMethod,
      checkIn: rental.checkIn,
      checkOut: rental.checkOut,
      numAdults: rental.numAdults,
      numChildren: rental.numChildren,
      numPets: rental.numPets,
    );
  }

  Rental toDomain() {
    return Rental(
      uuid: uuid,
      homeId: homeId,
      hostId: hostId,
      guestId: guestId,
      paymentMethod: paymentMethod,
      checkIn: checkIn,
      checkOut: checkOut,
      numAdults: numAdults,
      numChildren: numChildren,
      numPets: numPets,
    );
  }

  factory RentalDto.fromFirestore(DocumentSnapshot doc) {
    return RentalDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory RentalDto.fromFirestoreQueryDoc(QueryDocumentSnapshot doc) {
    return RentalDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory RentalDto.fromJson(Map<String, dynamic> json) =>
    _$RentalDtoFromJson(json);
}
