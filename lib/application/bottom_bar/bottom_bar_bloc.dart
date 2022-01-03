import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_event.dart';
part 'bottom_bar_state.dart';
part 'bottom_bar_bloc.freezed.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(BottomBarState.initial()) {
    on<_ChangeIndex>(_onChangeIndex);
  }

  void _onChangeIndex(BottomBarEvent event, Emitter<BottomBarState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}
