part of 'homes_bloc.dart';

@freezed
abstract class HomesState with _$HomesState {
  factory HomesState({
    required bool isLoading,
    required List<Home> homes,
    required List<Rental> rentals,
    required List<String> homeImages,
    required Home home,
    required Rental rental,
    required DomainUser host,
    required DomainUser guest,
  }) = _HomesState;

  factory HomesState.initial() => HomesState(
    isLoading: false,
    homes: [],
    rentals: [],
    homeImages: [],
    home: Home.empty(),
    rental: Rental.empty(),
    host: DomainUser.empty(),
    guest: DomainUser.empty()
  );
}
