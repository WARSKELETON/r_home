part of 'my_homes_bloc.dart';

@freezed
class MyHomesEvent with _$MyHomesEvent {
  const factory MyHomesEvent.initialize() = Initialize;
  const factory MyHomesEvent.homesReceived(List<Home> homes) = HomesReceived;
}