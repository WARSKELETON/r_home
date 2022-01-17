import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'local_activity.freezed.dart';

enum ActivityCategory {
  restaurants_and_bars, 
  culture, 
  night_clubs, 
  tour_guides,
  coffee_shops,
  sports
}

extension ActivityCategoryEnumEx on String {
  ActivityCategory toActivityCategory() => ActivityCategory.values.firstWhere((d) => d.name == toLowerCase());
}

@freezed
abstract class LocalActivity implements _$LocalActivity {
  const LocalActivity._();

  const factory LocalActivity({
    required String uuid,
    required String name,
    required String location,
    required String producer,
    required String category, //enum?
    required double price,
    required int contact,
    required String mainImageUrl
    // Add schedule
  }) = _LocalActivity;

  factory LocalActivity.empty() => LocalActivity(
    uuid: const Uuid().v1().toString(),
    name: '',
    location: '',
    producer: '',
    category: '',
    price: 0.0,
    contact: 0,
    mainImageUrl: ''
  );
}
