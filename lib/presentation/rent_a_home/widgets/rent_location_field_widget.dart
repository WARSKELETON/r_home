import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/domain/locations/location_suggestion.dart';
import 'package:r_home/presentation/core/location_search.dart';
import 'package:uuid/uuid.dart';

class RentLocationFieldWidget extends HookWidget {
  const RentLocationFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocBuilder<RentAHomeBloc, RentAHomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Where are you staying?',
              counterText: '',
              suffixIcon: Icon(Icons.search) 
            ),
            onTap: () async {
              final sessionToken = const Uuid().v4();
              final LocationSuggestion? result = await showSearch(
                context: context,
                delegate: LocationSearch(sessionToken),
              );

              if (result != null) {
                textEditingController.text = result.desc;
                context
                .read<RentAHomeBloc>()
                .add(RentAHomeEvent.locationChanged(result.desc));
              }
            },
            onChanged: (value) => context
                .read<RentAHomeBloc>()
                .add(RentAHomeEvent.locationChanged(value)),
            validator: (_) {
              final location = context.read<RentAHomeBloc>().state.location;
              if (location.isEmpty) {
                return "Please enter the activity's location.";
              }
              return null;
            }
          ));
        },
    );
  }
}