import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stepper_event.dart';
part 'stepper_state.dart';
part 'stepper_bloc.freezed.dart';

class StepperBloc extends Bloc<StepperEvent, StepperState> {
  StepperBloc() : super(StepperState.initial()) {
    on<_IncrementIndex>(_incrementIndex);
    on<_DecrementIndex>(_decrementIndex);
  }

  _incrementIndex(_IncrementIndex event, Emitter<StepperState> emit) {
    emit(state.copyWith(selectedIndex: state.selectedIndex + 1));
  }

  _decrementIndex(_DecrementIndex event, Emitter<StepperState> emit) {
    emit(state.copyWith(selectedIndex: state.selectedIndex - 1));
  }
}
