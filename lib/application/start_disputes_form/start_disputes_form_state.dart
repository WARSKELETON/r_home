part of 'start_disputes_form_bloc.dart';

@freezed
abstract class StartDisputesFormState with _$StartDisputesFormState {
  const factory StartDisputesFormState({
    required Dispute dispute,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<Dispute, Unit>> saveFailureOrSuccessOption,
  }) = _StartDisputesFormState;

  factory StartDisputesFormState.initial() => StartDisputesFormState(
    dispute: Dispute.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
