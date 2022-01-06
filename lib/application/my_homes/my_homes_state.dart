part of 'my_homes_bloc.dart';

@freezed
abstract class MyHomesState with _$MyHomesState {
  const factory MyHomesState({
    required bool isLoading,
    required List<Home> homes,
  }) = _MyHomesState;

  factory MyHomesState.initial() => const MyHomesState(
    isLoading: false,
    homes: [],
  );
}
