part of 'my_homes_form_bloc.dart';

@freezed
abstract class MyHomesFormState with _$MyHomesFormState {
  const factory MyHomesFormState({
    required List<LocalActivity> localActivities,
    required List<String> imagePaths,
    required ActivityCategory? category,
    required Home home,
    required List<LocationSuggestion> locations,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<Home, Unit>> saveFailureOrSuccessOption,
  }) = _MyHomesFormState;

  factory MyHomesFormState.initial() => MyHomesFormState(
    localActivities: [],
    imagePaths: [],
    category: ActivityCategory.coffee_shops,
    home: Home.empty(),
    locations: [],
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
