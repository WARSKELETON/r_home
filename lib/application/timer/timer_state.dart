part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    required DateTime finishTime,
    required Duration timeToEnd,
  }) = _TimerState;

  factory TimerState.initial() => TimerState(finishTime: DateTime(DateTime.now().year), timeToEnd: Duration(hours: 48));
}
