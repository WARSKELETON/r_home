import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'dispute.freezed.dart';

enum DisputeCategory {
  payments, 
  damages, 
  ads
}

@freezed
abstract class Dispute implements _$Dispute {
  const Dispute._();

  const factory Dispute({
    required String uuid,
    required String issuerUuid,
    required String title,
    required String descritption,
    required String homeUuid,
    required bool isOpened,
    required int votesAgainst,
    required int votesInsignificant,
    required int votesInFavour,
    required int initialStake,
    required int stake,
    required String category,
    // Add image
  }) = _Dispute;

  factory Dispute.empty() => const Dispute(
    issuerUuid: '',
    uuid: '',
    title: '',
    descritption: '',
    homeUuid: '',
    isOpened: false,
    votesAgainst: 0,
    votesInsignificant: 0,
    votesInFavour: 0,
    initialStake: 0,
    stake: 0,
    category: '',
  );
}
