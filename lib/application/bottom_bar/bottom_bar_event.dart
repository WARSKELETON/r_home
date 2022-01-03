part of 'bottom_bar_bloc.dart';

@freezed
class BottomBarEvent with _$BottomBarEvent {
  const factory BottomBarEvent.changeIndex(int index) = _ChangeIndex;
}
