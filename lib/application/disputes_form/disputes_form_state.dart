part of 'disputes_form_bloc.dart';

@freezed
abstract class DisputesFormState with _$DisputesFormState {
  const factory DisputesFormState({
    required Dispute dispute,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<Dispute, Unit>> saveFailureOrSuccessOption,
  }) = tDisputesFormState;

  factory DisputesFormState.initial() => DisputesFormState(
    dispute: Dispute.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
