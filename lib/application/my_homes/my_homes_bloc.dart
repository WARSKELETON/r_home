import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/my_homes/i_my_homes_repository.dart';

part 'my_homes_event.dart';
part 'my_homes_state.dart';
part 'my_homes_bloc.freezed.dart';

class MyHomesBloc extends Bloc<MyHomesEvent, MyHomesState> {
  final IMyHomesRepository _homesRepository;

  MyHomesBloc(this._homesRepository) : super(MyHomesState.initial()) {
    on<Initialize>(_onInitialize);
    on<HomesReceived>(_onHomesReceived);
    on<HomeReceived>(_onHomeReceived);
    on<WatchHome>(_onWatchHome);
  }

  StreamSubscription<List<Home>>? _myHomesStreamSubscription;
  StreamSubscription<Home>? _myHomeStreamSubscription;

  void _onInitialize(MyHomesEvent event, Emitter<MyHomesState> emit) {
    _myHomesStreamSubscription = _homesRepository.watchAll().listen(
          (homes) => add(MyHomesEvent.homesReceived(homes)),
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

  void _onHomeReceived(HomeReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(home: event.home));
  }
}
