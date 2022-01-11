part of 'my_stays_bloc.dart';

@freezed
class MyStaysState with _$MyStaysState {
  factory MyStaysState({
    required bool isLoading,
    required List<Rental> rentals,
    required Rental rental,
    required List<Home> homes,
    required Home home,
  }) = _MyStaysState;

  factory MyStaysState.initial() => MyStaysState(
    isLoading: false,
    rentals: [],
    rental: Rental.empty(),
    homes: [],
    home: Home.empty()    
  );
}