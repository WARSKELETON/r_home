import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/i_auth_facade.dart';
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
    on<WatchHome>(_onWatchHome);
  }

  StreamSubscription<List<Home>>? _myHomesStreamSubscription;
  StreamSubscription<List<Rental>>? _myRentalsStreamSubscription;
  StreamSubscription<Home>? _myHomeStreamSubscription;

  void _onInitialize(MyHomesEvent event, Emitter<MyHomesState> emit) {
    _myHomesStreamSubscription = _homesRepository.watchAllFromHost().listen(
          (home) => add(MyHomesEvent.homesReceived(home)),
        );
    _myRentalsStreamSubscription = _rentalsRepository.watchAll().listen(
          (rental) => add(MyHomesEvent.rentalsReceived(rental)),
        );
    emit(state);
  }

  void _onWatchHome(WatchHome event, Emitter<MyHomesState> emit) {
    print("Starting watching home " + event.homeUuid);
    _myHomeStreamSubscription = _homesRepository
      .watch(event.homeUuid)
      .listen((home) => add(MyHomesEvent.homeReceived(home))
    );
    emit(state);
  }

  void _onHomesReceived(HomesReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(homes: event.homes));
  }

  void _onRentalsReceived(RentalsReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(rentals: event.rentals));
  }

  void _onHomeReceived(HomeReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(home: event.home));
  }
}
