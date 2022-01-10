import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:r_home/domain/homes/home.dart';

part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
abstract class HomeDto implements _$HomeDto {
  const HomeDto._();

  const factory HomeDto({
    required String uuid,
    required String name,
    required String location,
    required String host,
    required double price,
    required int maxAdults,
    required int maxChildren,
    required int maxPets,
    required List<String> localActivities,
  }) = _HomeDto;

  factory HomeDto.fromDomain(Home home) {
    return HomeDto(
      uuid: home.uuid,
      name: home.name,
      location: home.location,
      host: home.host,
      price: home.price,
      maxAdults: home.maxAdults,
      maxChildren: home.maxChildren,
      maxPets: home.maxPets,
      localActivities: home.localActivities
    );
  }

  Home toDomain() {
    return Home(
      uuid: uuid,
      name: name,
      location: location,
      host: host,
      price: price,
      maxAdults: maxAdults,
      maxChildren: maxChildren,
      maxPets: maxPets,
      localActivities: localActivities
    );
  }

  factory HomeDto.fromFirestore(DocumentSnapshot doc) {
    return HomeDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory HomeDto.fromFirestoreQueryDoc(QueryDocumentSnapshot doc) {
    return HomeDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  factory HomeDto.fromJson(Map<String, dynamic> json) =>
      _$HomeDtoFromJson(json);
}
