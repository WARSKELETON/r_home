part of 'my_local_activities_bloc.dart';

@freezed
class MyLocalActivitiesState with _$MyLocalActivitiesState {
  factory MyLocalActivitiesState({
    required bool isLoading,
    required List<LocalActivity> localActivities,
    required LocalActivity localActivity,
  }) = _MyLocalActivitiesState;

  factory MyLocalActivitiesState.initial() => MyLocalActivitiesState(
    isLoading: false,
    localActivities: [],
    localActivity: LocalActivity.empty()
  );
}
