part of 'rent_a_home_bloc.dart';

@freezed
abstract class RentAHomeState with _$RentAHomeState {
  const factory RentAHomeState({
    required DateTime? checkIn,
    required DateTime? checkOut,
    required String location,
    required Rental idealRental,
    required Home selectedHome,
    required List<String> homeImages,
    required List<Home> homes,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<Home, Unit>> saveFailureOrSuccessOption,
  }) = _RentAHomeState;

  factory RentAHomeState.initial() => RentAHomeState(
    checkIn: null,
    checkOut: null,
    idealRental: Rental.empty(),
    selectedHome: Home.empty(),
    location: "",
    homeImages: [],    
    homes: [],
    showErrorMessages: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
