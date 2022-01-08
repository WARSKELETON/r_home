part of 'my_local_activities_form_bloc.dart';

@freezed
abstract class MyLocalActivitiesFormState with _$MyLocalActivitiesFormState {
  const factory MyLocalActivitiesFormState({
    required LocalActivity activity,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<LocalActivity, Unit>> saveFailureOrSuccessOption,
  }) = _MyLocalActivitiesFormState;

  factory MyLocalActivitiesFormState.initial() => MyLocalActivitiesFormState(
    activity: LocalActivity.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
