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
  }

  StreamSubscription<Home>? _myHomesStreamSubscription;

  void _onInitialize(MyHomesEvent event, Emitter<MyHomesState> emit) {
      _myHomesStreamSubscription = _homesRepository.watchAll().listen(
        (homes) =>
            add(MyHomesEvent.homesReceived(homes)),
      ) as StreamSubscription<Home>?;
      emit(state);
  }

  void _onHomesReceived(HomesReceived event, Emitter<MyHomesState> emit) {
    emit(state.copyWith(homes: event.homes));
  }
}
