part of 'my_homes_bloc.dart';

@freezed
class MyHomesEvent with _$MyHomesEvent {
  const factory MyHomesEvent.initialize() = Initialize;
  const factory MyHomesEvent.homesReceived(List<Home> homes) = HomesReceived;
  const factory MyHomesEvent.watchHome(String homeUuid) = WatchHome;
  const factory MyHomesEvent.homeReceived(Home home) = HomeReceived;
}