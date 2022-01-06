part of 'bottom_bar_bloc.dart';

@freezed
class BottomBarState with _$BottomBarState {
  const factory BottomBarState({
    required int selectedIndex,
  }) = _BottomBarState;

  factory BottomBarState.initial() => const BottomBarState(
    selectedIndex: 1,
  );
}
