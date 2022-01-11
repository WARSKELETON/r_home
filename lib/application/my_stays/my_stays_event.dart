part of 'my_stays_bloc.dart';

@freezed
class MyStaysEvent with _$MyStaysEvent {
  const factory MyStaysEvent.initialize() = Initialize;
  const factory MyStaysEvent.rentalsReceived(List<Rental> rentals) = RentalsReceived;
  const factory MyStaysEvent.watchRental(String rentalUuid) = WatchRental;
  const factory MyStaysEvent.rentalReceivedReceived(Rental rental) = RentalReceived;
  const factory MyStaysEvent.homesReceived(List<Home> homes) = HomesReceived;
  const factory MyStaysEvent.watchHome(String homeUuid) = WatchHome;
  const factory MyStaysEvent.homeReceivedReceived(Home home) = HomeReceived;
}