import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';

@freezed
abstract class Home implements _$Home {
  const Home._();

  const factory Home({
    required String name,
    required String location,
    required String description,
    required String host,
    required double price,
    required int maxAdults,
    required int maxChildren,
    required int maxPets,
    required List<String> localActivities,
    // Add image
    // Add list of activities
  }) = _Home;

  factory Home.empty() => const Home(
      name: '',
      location: '',
      description: '',
      host: '',
      price: 0.0,
      maxAdults: 0,
      maxChildren: 0,
      maxPets: 0,
      localActivities: []);
}
