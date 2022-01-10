part of 'disputes_bloc.dart';

@freezed
class DisputesState with _$DisputesState {
  const factory DisputesState({
    required bool isLoading,
    required List<Dispute> disputes,
    required Dispute dispute,
  }) = _DisputesState;

  factory DisputesState.initial() => DisputesState(
    isLoading: false,
    disputes: [],
    dispute: Dispute.empty(),
  );
}
