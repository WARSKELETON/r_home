import 'package:flutter/material.dart';
import 'package:r_home/domain/locations/location_suggestion.dart';
import 'package:r_home/infrastructure/locations/locations_facade.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class LocationSearch extends SearchDelegate<LocationSuggestion> {
  final String sessionToken;

  LocationSearch(this.sessionToken);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Clear',
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, LocationSuggestion.empty());
      },
    );
  }
  
  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: query == ""
          ? null
          : LocationsFacade(sessionToken).fetchSuggestions(
              query, "pt-PT"),
      builder: (context, snapshot) {
        if (query == '') {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text('Enter the location'),
          );
        } else if (snapshot.hasData) {
          final suggestions = snapshot.data as List<LocationSuggestion>;
          return ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryBlue.withOpacity(1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.place, color: Colors.white),
                ),
              ),
              title: Text(suggestions[index].desc),
              onTap: () {
                close(context, suggestions[index]);
              },
            ),
            itemCount: suggestions.length,
          );                  
        } else {
          return Container(child: Text('Loading...'));
        }
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}
