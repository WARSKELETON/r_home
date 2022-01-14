import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'my_stays_event.dart';
part 'my_stays_state.dart';
part 'my_stays_bloc.freezed.dart';

class MyStaysBloc extends Bloc<MyStaysEvent, MyStaysState> {
  final IRentalsRepository _rentalsRepository;
  final IHomesRepository _homesRepository;

  MyStaysBloc(this._rentalsRepository, this._homesRepository) : super(MyStaysState.initial()) {
    on<Initialize>(_onInitialize);
    on<WatchRental>(_onWatchRental);
    on<RentalsReceived>(_onRentalsReceived);
    on<RentalReceived>(_onRentalReceived);
    on<WatchHome>(_onWatchHome);
    on<HomesReceived>(_onHomesReceived);
    on<HomeReceived>(_onHomeReceived);
  }

  StreamSubscription<List<Rental>>? _rentalsStreamSubscription;
  StreamSubscription<Rental>? _rentalStreamSubscription;
  StreamSubscription<List<Home>>? _homesStreamSubscription;
  StreamSubscription<Home>? _homeStreamSubscription;

  void _onInitialize(Initialize event, Emitter<MyStaysState> emit) {
    _rentalsStreamSubscription?.cancel();

    _rentalsStreamSubscription = _rentalsRepository
        .watchAllAsGuest()
        .listen(
          (rentals) => add(MyStaysEvent.rentalsReceived(rentals)),
        );
    emit(state);
  }

  void _onWatchRental(WatchRental event, Emitter<MyStaysState> emit) {
    _rentalStreamSubscription = _rentalsRepository
        .watch(event.rentalUuid)
        .listen((rental) => add(MyStaysEvent.rentalReceivedReceived(rental)));
    emit(state);
  }

  void _onRentalsReceived(RentalsReceived event, Emitter<MyStaysState> emit) {
    List<String> homeIds = event.rentals.map((rental) => rental.homeId).toList();

    _homesStreamSubscription?.cancel();

    _homesStreamSubscription = _homesRepository
      .watchAllFromHomeIds(homeIds)
      .listen(
        (homes) => add(MyStaysEvent.homesReceived(homes)),
      );

    emit(state.copyWith(rentals: event.rentals));
  }

  void _onRentalReceived(RentalReceived event, Emitter<MyStaysState> emit) async {
    final host = await _rentalsRepository.getUserById(event.rental.hostId);
    final guest = await _rentalsRepository.getUserById(event.rental.guestId);
    emit(state.copyWith(
      rental: event.rental,
      host: host,
      guest: guest,
    ));
  }

  void _onWatchHome(WatchHome event, Emitter<MyStaysState> emit) {
    _homeStreamSubscription = _homesRepository
        .watch(event.homeUuid)
        .listen((home) => add(MyStaysEvent.homeReceivedReceived(home)));
    emit(state);
  }

  void _onHomesReceived(HomesReceived event, Emitter<MyStaysState> emit) {
    emit(state.copyWith(homes: event.homes));
  }

  void _onHomeReceived(HomeReceived event, Emitter<MyStaysState> emit) {
    emit(state.copyWith(home: event.home));
  }

  @override
  Future<void> close() {
    _rentalsStreamSubscription?.cancel();
    _rentalStreamSubscription?.cancel();
    _homesStreamSubscription?.cancel();
    _homeStreamSubscription?.cancel();
    return super.close();
  }
}
