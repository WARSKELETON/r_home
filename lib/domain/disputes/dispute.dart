import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'dispute.freezed.dart';

enum DisputeCategory {
  problems_with_payments, 
  damages_in_properties, 
  false_advertisement
}

@freezed
abstract class Dispute implements _$Dispute {
  const Dispute._();

  const factory Dispute({
    required String uuid,
    required String issuerUuid,
    required String issuerUsername,
    required String title,
    required String descritption,
    required String homeUuid,
    required bool isOpened,
    required int votesAgainst,
    required int votesIndiferent,
    required int votesInFavour,
    required double initialStake,
    required double stake,
    required String category,
    // Add image
  }) = _Dispute;

  factory Dispute.empty() => Dispute(
    uuid: const Uuid().v1().toString(),
    issuerUuid: '',
    issuerUsername: '',
    title: '',
    descritption: '',
    homeUuid: '',
    isOpened: true,
    votesAgainst: 0,
    votesIndiferent: 0,
    votesInFavour: 0,
    initialStake: 0,
    stake: 0,
    category: '',
  );
}
