part of 'local_activities_bloc.dart';

@freezed
class LocalActivitiesState with _$LocalActivitiesState {
  factory LocalActivitiesState({
    required List<LocalActivity> localActivities,
    required LocalActivity localActivity,
    required List<String> localActivityImages
  }) = _LocalActivitiesState;

  factory LocalActivitiesState.initial() => LocalActivitiesState(
    localActivities: [],
    localActivity: LocalActivity.empty(),
    localActivityImages: []
  );
}
