part of 'list_filter_bloc.dart';

@freezed
class ListFilterEvent with _$ListFilterEvent {
  const factory ListFilterEvent.toggleOpened() = ToggleOpened;
  const factory ListFilterEvent.toggleClosed() = ToggleClosed;
  const factory ListFilterEvent.toggleVoted() = ToggleVoted;
  const factory ListFilterEvent.toggleNotVoted() = ToggleNotVoted;
  const factory ListFilterEvent.toggleDamages() = ToggleDamages;
  const factory ListFilterEvent.toggleFalseAds() = ToggleFalseAds;
}