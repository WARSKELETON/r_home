part of 'my_homes_form_bloc.dart';

@freezed
abstract class MyHomesFormState with _$MyHomesFormState {
  const factory MyHomesFormState({
    required List<LocalActivity> localActivities,
    required ActivityCategory? category,
    required Home home,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<Home, Unit>> saveFailureOrSuccessOption,
  }) = _MyHomesFormState;

  factory MyHomesFormState.initial() => MyHomesFormState(
    localActivities: [],
    category: null,
    home: Home.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
