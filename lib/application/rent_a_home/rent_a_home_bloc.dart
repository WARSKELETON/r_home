import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'rent_a_home_event.dart';
part 'rent_a_home_state.dart';
part 'rent_a_home_bloc.freezed.dart';

class RentAHomeBloc extends Bloc<RentAHomeEvent, RentAHomeState> {
  final IRentalsRepository _rentalsRepository;
  final IHomesRepository _homesRepository;

  RentAHomeBloc(this._rentalsRepository, this._homesRepository) : super(RentAHomeState.initial()) {
    on<Initialize>(_onInitialize);
    on<WatchAvailableHomes>(_onWatchAvailableHomes);
    on<AvailableHomesReceived>(_onAvailableHomesReceived);
    on<LocationChanged>(_onLocationChanged);
    on<PaymentMethodChanged>(_onPaymentMethodChanged);
    on<HomeChanged>(_onHomeChanged);
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

  StreamSubscription<List<Home>>? _homesStreamSubscription;

  void _onInitialize(Initialize event, Emitter<RentAHomeState> emit) {
    if (event.location != null) {
      add(RentAHomeEvent.locationChanged(event.location!));
    }

    emit(state);
  }

  void _onWatchAvailableHomes(WatchAvailableHomes event, Emitter<RentAHomeState> emit) {
    _homesStreamSubscription = _homesRepository
        .watchAllFiltered(state.location)
        .listen(
          (homes) => add(RentAHomeEvent.availableHomesReceived(homes)),
        );
    emit(state);
  }

  void _onAvailableHomesReceived(AvailableHomesReceived event, Emitter<RentAHomeState> emit) {
    final List<Home> homes = event.homes.where((home) => state.idealRental.numAdults <= home.maxAdults && state.idealRental.numChildren <= home.maxChildren && state.idealRental.numPets <= home.maxPets).toList();
    emit(state.copyWith(homes: homes));
  }

  void _onLocationChanged(LocationChanged event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(location: event.location));
  }

  void _onPaymentMethodChanged(PaymentMethodChanged event, Emitter<RentAHomeState> emit) {
    emit(state.copyWith(
      idealRental: state.idealRental
          .copyWith(paymentMethod: event.paymentMethod),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onHomeChanged(HomeChanged event, Emitter<RentAHomeState> emit) {
    emit(
      state.copyWith(
        selectedHome: event.home
      )
    );
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

    Home selectedHome = state.selectedHome;
    Rental finalRental = state.idealRental.copyWith(
      homeId: selectedHome.uuid,
      hostId: selectedHome.host,
      checkIn: state.checkIn!,
      checkOut: state.checkOut!
    );

    await _rentalsRepository.create(finalRental, selectedHome.price);

    emit(state.copyWith(isSaving: false));
  }

  @override
  Future<void> close() {
    _homesStreamSubscription?.cancel();
    return super.close();
  }
}
