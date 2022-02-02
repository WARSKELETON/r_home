part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.initialize(DateTime closingTime) = Initialize;
  const factory TimerEvent.timerTicked() = TickTimer;
  const factory TimerEvent.timerChanged(DateTime closingTime) = ChangedTimer;
}