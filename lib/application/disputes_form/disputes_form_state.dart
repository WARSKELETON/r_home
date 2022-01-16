part of 'disputes_form_bloc.dart';

@freezed
abstract class DisputesFormState with _$DisputesFormState {
  const factory DisputesFormState({
    required Dispute dispute,
    required List<String> imagePaths,
    required List<Home> homes,
    required List<Rental> rentals,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<Dispute, Unit>> saveFailureOrSuccessOption,
  }) = _DisputesFormState;

  factory DisputesFormState.initial() => DisputesFormState(
    dispute: Dispute.empty(),
    imagePaths: [],
    homes: [],
    rentals: [],
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
