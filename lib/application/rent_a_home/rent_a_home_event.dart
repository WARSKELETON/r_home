part of 'rent_a_home_bloc.dart';

@freezed
class RentAHomeEvent with _$RentAHomeEvent {
  const factory  RentAHomeEvent.initialize(Option<Rental> optionOf) = Initialize;
  const factory  RentAHomeEvent.locationChanged(String location) = LocationChanged;
  const factory  RentAHomeEvent.priceChanged(double price) = PriceChanged;
  const factory  RentAHomeEvent.checkInChanged(DateTime? checkIn) = CheckInChanged;
  const factory  RentAHomeEvent.checkOutChanged(DateTime? checkOut) = CheckOutChanged;  
  const factory  RentAHomeEvent.adultsAdd(int increment) = AdultsAdd;
  const factory  RentAHomeEvent.adultsRemove(int decrement) = AdultsRemove;
  const factory  RentAHomeEvent.childrenAdd(int increment) = ChildrenAdd;
  const factory  RentAHomeEvent.childrenRemove(int decrement) = ChildrenRemove;
  const factory  RentAHomeEvent.petsAdd(int increment) = PetsAdd;
  const factory  RentAHomeEvent.petsRemove(int decrement) = PetsRemove;
  const factory  RentAHomeEvent.submit() = Submit;
}