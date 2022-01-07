part of 'my_homes_form_bloc.dart';

@freezed
abstract class MyHomesFormState with _$MyHomesFormState {
  const factory MyHomesFormState({
    required Home home,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<Home, Unit>> saveFailureOrSuccessOption,
  }) = _MyHomesFormState;

  factory MyHomesFormState.initial() => MyHomesFormState(
    home: Home.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
