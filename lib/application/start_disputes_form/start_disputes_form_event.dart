part of 'start_disputes_form_bloc.dart';

@freezed
class StartDisputesFormEvent with _$StartDisputesFormEvent {
  const factory StartDisputesFormEvent.initialize() = Initialize;
  const factory StartDisputesFormEvent.homeChanged(String homeUuid) = HomeChanged;
  const factory StartDisputesFormEvent.titleChanged(String title) = TitleChanged;
  const factory StartDisputesFormEvent.descriptionChanged(String description) = DescriptionChanged;
  const factory StartDisputesFormEvent.initialStakeChanged(int tokens) = InitialStakeChanged;
  const factory StartDisputesFormEvent.submit() = Submit;
}