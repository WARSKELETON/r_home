import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_suggestion.freezed.dart';

@freezed
abstract class LocationSuggestion implements _$LocationSuggestion {
  const LocationSuggestion._();

  const factory LocationSuggestion({
    required String placeId,
    required String desc,
  }) = _LocationSuggestion;

  factory LocationSuggestion.empty() => const LocationSuggestion(
    placeId: '',
    desc: '',
  );
}
