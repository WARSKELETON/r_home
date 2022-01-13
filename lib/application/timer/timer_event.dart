part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.initialize(DateTime finishTime) = Initialize;
  const factory TimerEvent.timerChanged() = TickTimer;
}