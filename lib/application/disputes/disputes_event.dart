part of 'disputes_bloc.dart';

@freezed
class DisputesEvent with _$DisputesEvent {
  const factory DisputesEvent.initialize(bool allDisputes) = Initialize;
  const factory DisputesEvent.disputesReceived(List<Dispute> disputes) = DisputesReceived;
  const factory DisputesEvent.watchDispute(String disputeUuid) = WatchDispute;
  const factory DisputesEvent.imagesReceived(List<String> images) = ImagesReceived;
  const factory DisputesEvent.disputeReceived(Dispute dispute) = DisputeReceived;
  const factory DisputesEvent.homeReceived(Home home) = HomeReceived;
  const factory DisputesEvent.rentalReceived(Rental rental) = RentalReceived;
  const factory DisputesEvent.voteReceived(DisputeVote vote) = VoteReceived;
  const factory DisputesEvent.voteSubmit(String userUuid) = VoteSubmit;
}