part of 'list_filter_bloc.dart';

@freezed
class ListFilterState with _$ListFilterState {
  const factory ListFilterState({
    required bool isOpenedActive,
    required bool isClosedActive,
    required bool isVotedActive,
    required bool isNotVotedActive,
    required bool isDamagesActive,
    required bool isFalseAdsActive,
  }) = _ListFilterState;

  factory ListFilterState.initial() => const ListFilterState(
    isOpenedActive: false,
    isClosedActive: false,
    isVotedActive: false,
    isNotVotedActive: false,
    isDamagesActive: false,
    isFalseAdsActive: false,
  );
}
