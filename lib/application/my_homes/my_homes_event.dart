part of 'my_homes_bloc.dart';

@freezed
class MyHomesEvent with _$MyHomesEvent {
  const factory MyHomesEvent.initialize() = Initialize;
  const factory MyHomesEvent.homesReceived(List<Home> homes) = HomesReceived;
  const factory MyHomesEvent.rentalsReceived(List<Rental> rentals) = RentalsReceived;  
  const factory MyHomesEvent.watchHome(String homeUuid) = WatchHome;
  const factory MyHomesEvent.watchRental(String rentalUuid) = WatchRental;
  const factory MyHomesEvent.homeReceived(Home home) = HomeReceived;
  const factory MyHomesEvent.rentalReceived(Rental rental) = RentalReceived;
}