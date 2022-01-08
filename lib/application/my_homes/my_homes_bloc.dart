import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/i_rentals_repository.dart';

part 'my_homes_event.dart';
part 'my_homes_state.dart';
part 'my_homes_bloc.freezed.dart';

class MyHomesBloc extends Bloc<MyHomesEvent, MyHomesState> {
  final IRentalsRepository _rentalsRepository;

  MyHomesBloc(this._rentalsRepository) : super(MyHomesState.initial()) {
    on<Initialize>(_onInitialize);
    on<HomesReceived>(_onHomesReceived);
    on<HomeReceived>(_onHomeReceived);
    on<WatchHome>(_onWatchHome);
  }

  StreamSubscription<List<Home>>? _myHomesStreamSubscription;
  StreamSubscription<Home>? _myHomeStreamSubscription;

  void _onInitialize(MyHomesEvent event, Emitter<MyHomesState> emit) {
    _myHomesStreamSubscription = _rentalsRepository.watchAll().listen(
          (rental) => add(MyHomesEvent.homesReceived(rental)),
        );
    emit(state);
  }

  void _onWatchHome(WatchHome event, Emitter<MyHomesState> emit) {
    print("Starting watching home " + event.homeUuid);
    _myHomeStreamSubscription = _rentalsRepository
      .watch(event.homeUuid)
      .listen((rental) => add(MyHomesEvent.homeReceived(home))
    );
    emit(state);
  }

  void _onHomesReceived(HomesReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(homes: event.homes));
  }

  void _onHomeReceived(HomeReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(home: event.home));
  }
}
