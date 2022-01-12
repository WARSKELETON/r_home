part of 'disputes_bloc.dart';

@freezed
class DisputesState with _$DisputesState {
  const factory DisputesState({
    required bool isLoading,
    required List<Dispute> disputes,
    required Dispute dispute,
    required Home home,
    required DomainUser host,
    required DisputeVote currentVote,
    required Rental rental,
  }) = _DisputesState;

  factory DisputesState.initial() => DisputesState(
    isLoading: false,
    disputes: [],
    dispute: Dispute.empty(),
    home: Home.empty(),
    host: DomainUser.empty(),
    currentVote: DisputeVote.none,
    rental: Rental.empty()
  );
}
