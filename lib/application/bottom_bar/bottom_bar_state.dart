part of 'bottom_bar_bloc.dart';

@freezed
class BottomBarState with _$BottomBarState {
  const factory BottomBarState({
    required int selectedIndex,
    required int previousIndex,
  }) = _BottomBarState;

  factory BottomBarState.initial() => const BottomBarState(
    selectedIndex: 1,
    previousIndex: 1
  );
}
