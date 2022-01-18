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
    required double initialStake,
    required String category,
    @JsonKey(
      fromJson: firestoreTimestampFromJson,
      toJson: firestoreTimestampToJson,
    )
    required Timestamp creationDate,
    required String mainImageUrl,
    required List<String> usersVotedInFavour,
    required List<String> usersVotedIrrelevent,
    required List<String> usersVotedAgainst
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
      initialStake: dispute.initialStake,
      category: dispute.category,
      creationDate: Timestamp.fromDate(dispute.creationDate),
      mainImageUrl: dispute.mainImageUrl,
      usersVotedInFavour: dispute.usersVotedInFavour,
      usersVotedIrrelevent: dispute.usersVotedIrrelevent,
      usersVotedAgainst: dispute.usersVotedAgainst,
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
      initialStake: initialStake,
      category: category,
      creationDate: creationDate.toDate(),
      mainImageUrl: mainImageUrl,
      usersVotedInFavour: usersVotedInFavour,
      usersVotedIrrelevent: usersVotedIrrelevent,
      usersVotedAgainst: usersVotedAgainst,
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
