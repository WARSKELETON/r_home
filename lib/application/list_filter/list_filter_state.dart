part of 'list_filter_bloc.dart';

@freezed
class ListFilterState with _$ListFilterState {
  const factory ListFilterState({
    required bool isOpened,
    required bool isClosed,
    required bool isVotedActive,
    required bool isNotVotedActive,
    required bool isDamagesActive,
    required bool isFalseAdsActive,
  }) = _ListFilterState;

  factory ListFilterState.initial() => const ListFilterState(
    isOpened: false,
    isClosed: false,
    isVotedActive: false,
    isNotVotedActive: false,
    isDamagesActive: false,
    isFalseAdsActive: false,
  );
}
