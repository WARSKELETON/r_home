import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';

part 'local_activity_dto.freezed.dart';
part 'local_activity_dto.g.dart';

@freezed
abstract class LocalActivityDto implements _$LocalActivityDto {
  const LocalActivityDto._();

  const factory LocalActivityDto(
      {required String name,
      required String location,
      required String description,
      required String producer,
      required String category,
      required double price,
      required int contact}) = _LocalActivityDto;

  factory LocalActivityDto.fromDomain(LocalActivity localActivity) {
    return LocalActivityDto(
      name: localActivity.name,
      location: localActivity.location,
      description: localActivity.description,
      producer: localActivity.producer,
      category: localActivity.category,
      price: localActivity.price,
      contact: localActivity.contact,
    );
  }

  LocalActivity toDomain() {
    return LocalActivity(
      name: name,
      location: location,
      description: description,
      producer: producer,
      category: category,
      price: price,
      contact: contact,
    );
  }

  factory LocalActivityDto.fromFirestore(DocumentSnapshot doc) {
    return LocalActivityDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory LocalActivityDto.fromJson(Map<String, dynamic> json) =>
      _$LocalActivityDtoFromJson(json);
}
