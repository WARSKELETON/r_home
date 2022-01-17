part of 'homes_bloc.dart';

@freezed
class HomesEvent with _$HomesEvent {
  const factory HomesEvent.initialize(DomainUser currentUser, String? activityUuid) = Initialize;
  const factory HomesEvent.imagesReceived(List<String> images) = ImagesReceived;
  const factory HomesEvent.homesReceived(List<Home> homes) = HomesReceived;
  const factory HomesEvent.rentalsReceived(List<Rental> rentals) = RentalsReceived;  
  const factory HomesEvent.watchHome(String homeUuid) = WatchHome;
  const factory HomesEvent.watchRental(String rentalUuid) = WatchRental;
  const factory HomesEvent.homeReceived(Home home) = HomeReceived;
  const factory HomesEvent.rentalReceived(Rental rental) = RentalReceived;
}