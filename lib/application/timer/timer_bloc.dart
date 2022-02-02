import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(TimerState.initial()) {
    on<Initialize>(_onInitialize);
    on<TickTimer>(_onTickTimer);
  }

  StreamSubscription<dynamic>? _tickerSubscription;

  void _onInitialize(Initialize event, Emitter<TimerState> emit) {
    var difference = Duration(milliseconds: event.closingTime.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch);
    emit(state.copyWith(closingTime: event.closingTime));
    emit(state.copyWith(timeToEnd: difference));

    _tickerSubscription != null ?_tickerSubscription ??= Stream.periodic(const Duration(seconds: 1))
    .listen((event) => add(const TimerEvent.timerTicked())) : null;
 
    emit(state);
  }

  _onTickTimer(TickTimer event, Emitter<TimerState> emit) {
    var difference = Duration(milliseconds: state.closingTime.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch);
    emit(state.copyWith(timeToEnd: difference));
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}