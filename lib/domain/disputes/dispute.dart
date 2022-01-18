import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'dispute.freezed.dart';

enum DisputeVote {
  none,
  against, 
  favour, 
  irrelevant
}

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
    required String rentalUuid,
    required double initialStake,
    required String category,
    required DateTime creationDate,
    required String mainImageUrl,
    required List<String> usersVotedInFavour,
    required List<String> usersVotedAgainst,
    required List<String> usersVotedIrrelevent,
  }) = _Dispute;

  factory Dispute.empty() => Dispute(
    uuid: const Uuid().v1().toString(),
    issuerUuid: '',
    issuerUsername: '',
    title: '',
    descritption: '',
    homeUuid: '',
    rentalUuid: '',
    initialStake: 0,
    category: '',
    creationDate: DateTime.now(),
    mainImageUrl: '',
    usersVotedInFavour: [],
    usersVotedAgainst: [],
    usersVotedIrrelevent: [],
  );

  List<String> getUsersVoted() {
    return [...usersVotedInFavour, ...usersVotedIrrelevent, ...usersVotedAgainst];
  }
}
