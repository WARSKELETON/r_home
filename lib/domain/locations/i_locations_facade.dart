import 'package:dartz/dartz.dart';
import 'package:r_home/domain/locations/location_suggestion.dart';

abstract class ILocationsFacade {
  Future<List<LocationSuggestion>> fetchSuggestions(String input, String lang);
}
