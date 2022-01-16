part of 'disputes_bloc.dart';

@freezed
class DisputesState with _$DisputesState {
  const factory DisputesState({
    required bool isLoading,
    required int selectedImageIndex,
    required List<String> disputeImages,
    required List<Dispute> disputes,
    required Dispute dispute,
    required Home home,
    required DisputeVote currentVote,
    required Rental rental,
  }) = _DisputesState;

  factory DisputesState.initial() => DisputesState(
    isLoading: false,
    selectedImageIndex: 0,
    disputeImages: [],
    disputes: [],
    dispute: Dispute.empty(),
    home: Home.empty(),
    currentVote: DisputeVote.none,
    rental: Rental.empty()
  );
}
