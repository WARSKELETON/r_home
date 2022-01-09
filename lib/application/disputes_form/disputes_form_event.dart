part of 'disputes_form_bloc.dart';

@freezed
class DisputesFormEvent with _$DisputesFormEvent {
  const factory DisputesFormEvent.initialize(DisputeCategory disputeCategory) = Initialize;
  const factory DisputesFormEvent.categoryChanged(DisputeCategory category) = CategoryChanged;
  const factory DisputesFormEvent.homeChanged(String homeUuid) = HomeChanged;
  const factory DisputesFormEvent.titleChanged(String title) = TitleChanged;
  const factory DisputesFormEvent.descriptionChanged(String description) = DescriptionChanged;
  const factory DisputesFormEvent.initialStakeChanged(double tokens) = InitialStakeChanged;
  const factory DisputesFormEvent.submit() = Submit;
}