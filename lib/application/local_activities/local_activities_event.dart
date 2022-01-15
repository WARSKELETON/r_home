part of 'local_activities_bloc.dart';

@freezed
class LocalActivitiesEvent with _$LocalActivitiesEvent {
  const factory LocalActivitiesEvent.initialize() = Initialize;
  const factory LocalActivitiesEvent.localActivitiesReceived(List<LocalActivity> localActivities) = LocalActivitiesReceived;
  const factory LocalActivitiesEvent.watchLocalActivity(String localActivityUuid) = WatchLocalActivity;
  const factory LocalActivitiesEvent.localActivityReceivedReceived(LocalActivity localActivity) = LocalActivityReceived;
}