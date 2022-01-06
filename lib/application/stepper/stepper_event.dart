part of 'stepper_bloc.dart';

@freezed
class StepperEvent with _$StepperEvent {
  const factory StepperEvent.incrementIndex() = _IncrementIndex;
  const factory StepperEvent.decrementIndex() = _DecrementIndex;
}