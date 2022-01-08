part of 'my_homes_bloc.dart';

@freezed
abstract class MyHomesState with _$MyHomesState {
  factory MyHomesState({
    required bool isLoading,
    required List<Home> homes,
    required List<Rental> rentals,
    required Home home,
  }) = _MyHomesState;

  factory MyHomesState.initial() => MyHomesState(
    isLoading: false,
    homes: [],
    rentals: [],
    home: Home.empty()
  );
}
