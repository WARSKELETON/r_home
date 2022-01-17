import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'home.freezed.dart';

@freezed
abstract class Home implements _$Home {
  const Home._();

  const factory Home({
    required String uuid,
    required String name,
    required String location,
    required String host,
    required double price,
    required int maxAdults,
    required int maxChildren,
    required int maxPets,
    required List<String> localActivities,
    required String mainImageUrl
  }) = _Home;

  factory Home.empty() => Home(
    uuid: const Uuid().v1().toString(),
    name: '',
    location: '',
    host: '',
    price: 0.0,
    maxAdults: 0,
    maxChildren: 0,
    maxPets: 0,
    localActivities: [],
    mainImageUrl: ""
  );
}
