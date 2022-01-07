import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_activity.freezed.dart';

@freezed
abstract class LocalActivity implements _$LocalActivity {
  const LocalActivity._();

  const factory LocalActivity(
      {required String name,
      required String location,
      required String producer,
      required String category, //enum?
      required double price,
      required int contact
      // Add image
      // Add schedule
      }) = _LocalActivity;

  factory LocalActivity.empty() => const LocalActivity(
      name: '',
      location: '',
      producer: '',
      category: '',
      price: 0.0,
      contact: 0);
}
