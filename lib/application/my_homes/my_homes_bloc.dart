import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'my_homes_event.dart';
part 'my_homes_state.dart';
part 'my_homes_bloc.freezed.dart';

class MyHomesBloc extends Bloc<MyHomesEvent, MyHomesState> {
  final IRentalsRepository _rentalsRepository;
  final IHomesRepository _homesRepository;

  MyHomesBloc(this._rentalsRepository, this._homesRepository) : super(MyHomesState.initial()) {
    on<Initialize>(_onInitialize);
    on<HomesReceived>(_onHomesReceived);
    on<RentalsReceived>(_onRentalsReceived);
    on<HomeReceived>(_onHomeReceived);
    on<RentalReceived>(_onRentalReceived);
    on<WatchHome>(_onWatchHome);
    on<WatchRental>(_onWatchRental);
  }

  StreamSubscription<List<Home>>? _myHomesStreamSubscription;
  StreamSubscription<List<Rental>>? _myRentalsStreamSubscription;
  StreamSubscription<Home>? _myHomeStreamSubscription;
  StreamSubscription<Rental>? _myRentalStreamSubscription;

  void _onInitialize(MyHomesEvent event, Emitter<MyHomesState> emit) {
    _myHomesStreamSubscription = _homesRepository.watchAllFromHost().listen(
          (home) => add(MyHomesEvent.homesReceived(home)),
        );
    _myRentalsStreamSubscription = _rentalsRepository.watchAllAsHost().listen(
          (rental) => add(MyHomesEvent.rentalsReceived(rental)),
        );
    emit(state);
  }

  void _onWatchHome(WatchHome event, Emitter<MyHomesState> emit) {
    _myHomeStreamSubscription = _homesRepository
      .watch(event.homeUuid)
      .listen((home) => add(MyHomesEvent.homeReceived(home))
    );
    emit(state);
  }

  void _onWatchRental(WatchRental event, Emitter<MyHomesState> emit) {
    if (event.rentalUuid != "") {
      _myRentalStreamSubscription = _rentalsRepository
        .watch(event.rentalUuid)
        .listen((rental) => add(MyHomesEvent.rentalReceived(rental))
      );
    }
    emit(state);
  }

  void _onHomesReceived(HomesReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(homes: event.homes));
  }

  void _onRentalsReceived(RentalsReceived event, Emitter<MyHomesState> emit) {
    DateTime currentDate = DateTime.now();
    List<Rental> rentals = event.rentals.where((rental) => rental.isRentalActive(currentDate)).toList();
    emit(state.copyWith(rentals: rentals));
  }

  void _onHomeReceived(HomeReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(home: event.home));
  }

  void _onRentalReceived(RentalReceived event, Emitter<MyHomesState> emit) async {
    final newRental = event.rental;
    DateTime currentDate = DateTime.now();

    if (newRental.isRentalActive(currentDate)) {
      final host = await _rentalsRepository.getUserById(event.rental.hostId);
      final guest = await _rentalsRepository.getUserById(event.rental.guestId);
      emit(state.copyWith(
        rental: event.rental,
        host: host,
        guest: guest,
      ));
    } else {
      emit(state.copyWith(
        rental: Rental.empty(),
        host: DomainUser.empty(),
        guest: DomainUser.empty(),
      ));
    }
  }

  @override
  Future<void> close() {
    _myHomesStreamSubscription?.cancel();
    _myRentalsStreamSubscription?.cancel();
    _myHomeStreamSubscription?.cancel();
    _myRentalStreamSubscription?.cancel();
    return super.close();
  }
}
