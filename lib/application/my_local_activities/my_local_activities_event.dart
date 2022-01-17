part of 'my_local_activities_bloc.dart';

@freezed
class MyLocalActivitiesEvent with _$MyLocalActivitiesEvent {
  const factory MyLocalActivitiesEvent.initialize() = Initialize;
  const factory MyLocalActivitiesEvent.imagesReceived(List<String> images) = ImagesReceived;
  const factory MyLocalActivitiesEvent.localActivitiesReceived(List<LocalActivity> localActivities) = LocalActivitiesReceived;
  const factory MyLocalActivitiesEvent.watchLocalActivity(String localActivityUuid) = WatchLocalActivity;
  const factory MyLocalActivitiesEvent.localActivityReceivedReceived(LocalActivity localActivity) = LocalActivityReceived;
}