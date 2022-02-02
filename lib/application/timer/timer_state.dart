part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    required DateTime closingTime,
    required Duration timeToEnd,
  }) = _TimerState;

  factory TimerState.initial() => TimerState(closingTime: DateTime(DateTime.now().year), timeToEnd: const Duration(minutes: 1));
}
