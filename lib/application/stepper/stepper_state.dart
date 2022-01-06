part of 'stepper_bloc.dart';

@freezed
class StepperState with _$StepperState {
  const factory StepperState({
    required int selectedIndex,
  }) = _StepperState;

  factory StepperState.initial() => const StepperState(selectedIndex: 0);
}
