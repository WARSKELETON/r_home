import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/homes/i_homes_repository.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';
import 'package:r_home/domain/rentals/rental.dart';

part 'homes_event.dart';
part 'homes_state.dart';
part 'homes_bloc.freezed.dart';

class HomesBloc extends Bloc<HomesEvent, HomesState> {
  final IRentalsRepository _rentalsRepository;
  final IHomesRepository _homesRepository;

  HomesBloc(this._rentalsRepository, this._homesRepository) : super(HomesState.initial()) {
    on<Initialize>(_onInitialize);
    on<HomesReceived>(_onHomesReceived);
    on<RentalsReceived>(_onRentalsReceived);
    on<HomeReceived>(_onHomeReceived);
    on<RentalReceived>(_onRentalReceived);
    on<WatchHome>(_onWatchHome);
    on<WatchRental>(_onWatchRental);
  }

  StreamSubscription<List<Home>>? _homesStreamSubscription;
  StreamSubscription<List<Rental>>? _rentalsStreamSubscription;
  StreamSubscription<Home>? _homeStreamSubscription;
  StreamSubscription<Rental>? _rentalStreamSubscription;
  DomainUser _currentUser = DomainUser.empty();

  void _onInitialize(Initialize event, Emitter<HomesState> emit) {
    _currentUser = event.currentUser;

    if (_currentUser.role == "host") {
      _homesStreamSubscription?.cancel();
      _rentalsStreamSubscription?.cancel();
      _homesStreamSubscription = _homesRepository.watchAllFromHost().listen(
            (home) => add(HomesEvent.homesReceived(home)),
          );
      _rentalsStreamSubscription = _rentalsRepository.watchAllAsHost().listen(
            (rental) => add(HomesEvent.rentalsReceived(rental)),
          );
    } else if (_currentUser.role == "guest") {
      _rentalsStreamSubscription?.cancel();
      _rentalsStreamSubscription = _rentalsRepository
        .watchAllAsGuest()
        .listen(
          (rentals) => add(HomesEvent.rentalsReceived(rentals)),
        );
    } else if (_currentUser.role == "producer" && event.activityUuid != null) {
      _homesStreamSubscription?.cancel();
      _homesStreamSubscription = _homesRepository.watchAllFromActivityId(event.activityUuid!).listen(
            (home) => add(HomesEvent.homesReceived(home)),
          );
    }

    emit(state);
  }

  void _onWatchHome(WatchHome event, Emitter<HomesState> emit) {
    _homeStreamSubscription = _homesRepository
      .watch(event.homeUuid)
      .listen((home) => add(HomesEvent.homeReceived(home))
    );
    emit(state);
  }

  void _onWatchRental(WatchRental event, Emitter<HomesState> emit) {
    if (event.rentalUuid != "") {
      _rentalStreamSubscription = _rentalsRepository
        .watch(event.rentalUuid)
        .listen((rental) => add(HomesEvent.rentalReceived(rental))
      );
    }
    emit(state);
  }

  void _onHomesReceived(HomesReceived event, Emitter<HomesState> emit) {
    emit(state.copyWith(homes: event.homes));
  }

  void _onRentalsReceived(RentalsReceived event, Emitter<HomesState> emit) {
    if (_currentUser.role == "host") {
      DateTime currentDate = DateTime.now();
      List<Rental> rentals = event.rentals.where((rental) => rental.isRentalActive(currentDate)).toList();
      emit(state.copyWith(rentals: rentals));
    } else if (_currentUser.role == "guest") {
      List<String> homeIds = event.rentals.map((rental) => rental.homeId).toList();

      if (homeIds.isNotEmpty) {
        _homesStreamSubscription?.cancel();

        _homesStreamSubscription = _homesRepository
          .watchAllFromHomeIds(homeIds)
          .listen(
            (homes) => add(HomesEvent.homesReceived(homes)),
          );

        emit(state.copyWith(rentals: event.rentals));
      }
    }
  }

  void _onHomeReceived(HomeReceived event, Emitter<HomesState> emit) {
    emit(state.copyWith(home: event.home));
  }

  void _onRentalReceived(RentalReceived event, Emitter<HomesState> emit) async {
    final newRental = event.rental;
    DateTime currentDate = DateTime.now();

    if (_currentUser.role == "host" && newRental.isRentalActive(currentDate)) {
      final host = await _rentalsRepository.getUserById(event.rental.hostId);
      final guest = await _rentalsRepository.getUserById(event.rental.guestId);
      emit(state.copyWith(
        rental: event.rental,
        host: host,
        guest: guest,
      ));
    } else if (_currentUser.role == "guest") {
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
    _homesStreamSubscription?.cancel();
    _rentalsStreamSubscription?.cancel();
    _homeStreamSubscription?.cancel();
    _rentalStreamSubscription?.cancel();
    return super.close();
  }
}
