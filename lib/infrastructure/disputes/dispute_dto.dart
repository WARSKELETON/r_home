import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/disputes/dispute.dart';

part 'dispute_dto.freezed.dart';
part 'dispute_dto.g.dart';

Timestamp firestoreTimestampFromJson(dynamic value) {
  return value;
}

dynamic firestoreTimestampToJson(dynamic value) => value;

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
    required String rentalUuid,
    required int votesAgainst,
    required int votesIrrelevant,
    required int votesInFavour,
    required double initialStake,
    required double stake,
    required String category,
    required List<String> usersVoted,
    @JsonKey(
      fromJson: firestoreTimestampFromJson,
      toJson: firestoreTimestampToJson,
    )
    required Timestamp creationDate,
    required String mainImageUrl
  }) = _DisputeDto;

  factory DisputeDto.fromDomain(Dispute dispute) {
    return DisputeDto(
      uuid: dispute.uuid,
      issuerUuid: dispute.issuerUuid,
      issuerUsername: dispute.issuerUsername,
      title: dispute.title,
      descritption: dispute.descritption,
      homeUuid: dispute.homeUuid,
      rentalUuid: dispute.rentalUuid,
      votesAgainst: dispute.votesAgainst,
      votesIrrelevant: dispute.votesIrrelevant,
      votesInFavour: dispute.votesInFavour,
      initialStake: dispute.initialStake,
      stake: dispute.stake,
      category: dispute.category,
      usersVoted: dispute.usersVoted,
      creationDate: Timestamp.fromDate(dispute.creationDate),
      mainImageUrl: dispute.mainImageUrl
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
      rentalUuid: rentalUuid,
      votesAgainst: votesAgainst,
      votesIrrelevant: votesIrrelevant,
      votesInFavour: votesInFavour,
      initialStake: initialStake,
      stake: stake,
      category: category,
      usersVoted: usersVoted,
      creationDate: creationDate.toDate(),
      mainImageUrl: mainImageUrl
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
