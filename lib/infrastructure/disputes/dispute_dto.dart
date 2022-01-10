import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/disputes/dispute.dart';

part 'dispute_dto.freezed.dart';
part 'dispute_dto.g.dart';

@freezed
abstract class DisputeDto implements _$DisputeDto {
  const DisputeDto._();

  const factory DisputeDto({
    required String uuid,
    required String issuerUuid,
    required String issuerUsername,
    required String title,
    required String descritption,
    required String homeUuid,
    required bool isOpened,
    required int votesAgainst,
    required int votesInsignificant,
    required int votesInFavour,
    required double initialStake,
    required double stake,
    required String category,
  }) = _DisputeDto;

  factory DisputeDto.fromDomain(Dispute dispute) {
    return DisputeDto(
      uuid: dispute.uuid,
      issuerUuid: dispute.issuerUuid,
      issuerUsername: dispute.issuerUsername,
      title: dispute.title,
      descritption: dispute.descritption,
      homeUuid: dispute.homeUuid,
      isOpened: dispute.isOpened,
      votesAgainst: dispute.votesAgainst,
      votesInsignificant: dispute.votesInsignificant,
      votesInFavour: dispute.votesInFavour,
      initialStake: dispute.initialStake,
      stake: dispute.stake,
      category: dispute.category
    );
  }

  Dispute toDomain() {
    return Dispute(
      uuid: uuid,
      issuerUuid: issuerUuid,
      issuerUsername: issuerUsername,
      title: title,
      descritption: descritption,
      homeUuid: homeUuid,
      isOpened: isOpened,
      votesAgainst: votesAgainst,
      votesInsignificant: votesInsignificant,
      votesInFavour: votesInFavour,
      initialStake: initialStake,
      stake: stake,
      category: category
    );
  }

  factory DisputeDto.fromFirestore(DocumentSnapshot doc) {
    return DisputeDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory DisputeDto.fromFirestoreQueryDoc(QueryDocumentSnapshot doc) {
    return DisputeDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory DisputeDto.fromJson(Map<String, dynamic> json) =>
    _$DisputeDtoFromJson(json);
}
