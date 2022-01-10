import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_filter_event.dart';
part 'list_filter_state.dart';
part 'list_filter_bloc.freezed.dart';

class ListFilterBloc extends Bloc<ListFilterEvent, ListFilterState> {
  ListFilterBloc() : super(ListFilterState.initial()) {
    on<ToggleOpened>(_onToggleOpened);
    on<ToggleClosed>(_onToggleClosed);
    on<ToggleVoted>(_onToggleVoted);
    on<ToggleNotVoted>(_onToggleNotVoted);
    on<ToggleDamages>(_onToggleDamages);
    on<ToggleFalseAds>(_onToggleFalseAds);
  }

  void _onToggleOpened(ToggleOpened event, Emitter<ListFilterState> emit) {
    emit(state.copyWith(isOpened: !state.isOpened));
  }

  void _onToggleClosed(ToggleClosed event, Emitter<ListFilterState> emit) {
    emit(state.copyWith(isClosed: !state.isClosed));
  }

  void _onToggleVoted(ToggleVoted event, Emitter<ListFilterState> emit) {
    emit(state.copyWith(isVotedActive: !state.isVotedActive));
  }

    void _onToggleNotVoted(ToggleNotVoted event, Emitter<ListFilterState> emit) {
    emit(state.copyWith(isNotVotedActive: !state.isNotVotedActive));
  }

    void _onToggleDamages(ToggleDamages event, Emitter<ListFilterState> emit) {
    emit(state.copyWith(isDamagesActive: !state.isDamagesActive));
  }

    void _onToggleFalseAds(ToggleFalseAds event, Emitter<ListFilterState> emit) {
    emit(state.copyWith(isFalseAdsActive: !state.isFalseAdsActive));
  }
}
