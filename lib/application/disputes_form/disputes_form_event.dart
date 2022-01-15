part of 'disputes_form_bloc.dart';

@freezed
class DisputesFormEvent with _$DisputesFormEvent {
  const factory DisputesFormEvent.initialize(Dispute dispute) = Initialize;
  const factory DisputesFormEvent.rentalsReceived(List<Rental> rentals) = RentalsReceived;
  const factory DisputesFormEvent.homesReceived(List<Home> homes) = HomesReceived;
  const factory DisputesFormEvent.categoryChanged(DisputeCategory category) = CategoryChanged;
  const factory DisputesFormEvent.rentalChanged(String rentalUuid) = RentalChanged;
  const factory DisputesFormEvent.homeChanged(String homeUuid) = HomeChanged;
  const factory DisputesFormEvent.titleChanged(String title) = TitleChanged;
  const factory DisputesFormEvent.descriptionChanged(String description) = DescriptionChanged;
  const factory DisputesFormEvent.initialStakeChanged(double tokens) = InitialStakeChanged;
  const factory DisputesFormEvent.submit() = Submit;
}