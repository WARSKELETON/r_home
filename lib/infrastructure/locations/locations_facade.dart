import 'dart:convert';

import 'package:http/http.dart';
import 'package:r_home/domain/locations/i_locations_facade.dart';
import 'package:r_home/domain/locations/location_suggestion.dart';

class LocationsFacade implements ILocationsFacade {
  final sessionToken;

  final client = Client();
  static const String ANDROID = "AIzaSyAShjruk4iyYo0kFjDZqbcHFhuCn78iiFY";

  LocationsFacade(this.sessionToken);

  @override
  Future<List<LocationSuggestion>> fetchSuggestions(String input, String lang) async {
    final request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=(regions)&language=$lang&components=country:pt&key=$ANDROID&sessiontoken=$sessionToken';
    final response = await client.get(Uri.parse(request));

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      if (result['status'] == 'OK') {
        // compose suggestions in a list
        return result['predictions']
            .map<LocationSuggestion>((p) => LocationSuggestion(placeId: p['place_id'], desc: p['description']))
            .toList();
      }
      if (result['status'] == 'ZERO_RESULTS') {
        return [];
      }
      throw Exception(result['error_message']);
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }
}