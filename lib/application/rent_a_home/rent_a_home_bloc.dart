import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'rent_a_home_event.dart';
part 'rent_a_home_state.dart';
part 'rent_a_home_bloc.freezed.dart';

class RentAHomeBloc extends Bloc<RentAHomeEvent, RentAHomeState> {
  final IRentalsRepository _rentalsRepository;

  RentAHomeBloc(this._rentalsRepository) : super(RentAHomeState.initial()) {
    on<Initialize>(_onInitialize);
    on<LocationChanged>(_onLocationChanged);
    on<PriceChanged>(_onPriceChanged);
    on<CheckInChanged>(_onCheckInChanged);
    on<CheckOutChanged>(_onCheckOutChanged);
    on<AdultsAdd>(_onAdultsAdd);
    on<AdultsRemove>(_onAdultsRemove);
    on<ChildrenAdd>(_onChildrenAdd);
    on<ChildrenRemove>(_onChildrenRemove);
    on<PetsAdd>(_onPetsAdd);
    on<PetsRemove>(_onPetsRemove);
    on<Submit>(_onSubmit);
  }

  void _onInitialize(Initialize event, Emitter<RentAHomeState> emit) {
    emit(state);
  }

  void _onLocationChanged(
      LocationChanged event, Emitter<RentAHomeState> emit) {
    // TODO
  }

  void _onPriceChanged(PriceChanged event, Emitter<RentAHomeState> emit) {
    // TODO
  }

  void _onCheckInChanged(CheckInChanged event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      checkIn: event.checkIn,
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onCheckOutChanged(CheckOutChanged event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      checkOut: event.checkOut,
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onAdultsAdd(AdultsAdd event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      idealRental: state.idealRental
          .copyWith(numAdults: state.idealRental.numAdults + event.increment),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onAdultsRemove(AdultsRemove event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      idealRental: state.idealRental
          .copyWith(numAdults: state.idealRental.numAdults - event.decrement),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onChildrenAdd(ChildrenAdd event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      idealRental: state.idealRental
          .copyWith(numChildren: state.idealRental.numChildren + event.increment),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onChildrenRemove(ChildrenRemove event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      idealRental: state.idealRental
          .copyWith(numChildren: state.idealRental.numChildren - event.decrement),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onPetsAdd(PetsAdd event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      idealRental: state.idealRental.copyWith(numPets: state.idealRental.numPets + event.increment),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onPetsRemove(PetsRemove event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      idealRental: state.idealRental.copyWith(numPets: state.idealRental.numPets - event.decrement),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSubmit(Submit event, Emitter<RentAHomeState> emit) async {
    emit(state.copyWith(isSaving: true));

    // TODO state.selectedRental = idealRental + home

    await _rentalsRepository.create(state.selectedRental);

    emit(state.copyWith(isSaving: false));
  }
}
