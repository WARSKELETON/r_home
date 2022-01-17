part of 'rent_a_home_bloc.dart';

@freezed
class RentAHomeEvent with _$RentAHomeEvent {
  const factory  RentAHomeEvent.initialize(Option<Rental> optionOf, String? location) = Initialize;
  const factory  RentAHomeEvent.watchAvailableHomes() = WatchAvailableHomes;
  const factory  RentAHomeEvent.availableHomesReceived(List<Home> homes) = AvailableHomesReceived;
  const factory  RentAHomeEvent.locationChanged(String location) = LocationChanged;
  const factory  RentAHomeEvent.paymentMethodChanged(String paymentMethod) = PaymentMethodChanged;
  const factory RentAHomeEvent.imagesReceived(List<String> images) = ImagesReceived;
  const factory  RentAHomeEvent.homeChanged(Home home) = HomeChanged;
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