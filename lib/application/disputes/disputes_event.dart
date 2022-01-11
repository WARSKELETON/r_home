part of 'disputes_bloc.dart';

@freezed
class DisputesEvent with _$DisputesEvent {
  const factory DisputesEvent.initialize(bool allDisputes) = Initialize;
  const factory DisputesEvent.disputesReceived(List<Dispute> disputes) = DisputesReceived;
  const factory DisputesEvent.watchDispute(String disputeUuid) = WatchDispute;
  const factory DisputesEvent.disputeReceived(Dispute dispute) = DisputeReceived;
  const factory DisputesEvent.voteAgainst() = VoteAgainst;
  const factory DisputesEvent.voteIndiferent() = VoteIndiferent;
  const factory DisputesEvent.voteFavour() = VoteFavour;
}