import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_local_activities_form/my_local_activities_form_bloc.dart';
import 'package:r_home/domain/locations/location_suggestion.dart';
import 'package:r_home/presentation/core/location_search.dart';
import 'package:uuid/uuid.dart';

class ActivityLocationField extends HookWidget {
  const ActivityLocationField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<MyLocalActivitiesFormBloc, MyLocalActivitiesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.activity.location;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.fmd_good),
              labelText: 'Location*',
              counterText: '',
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
                .read<MyLocalActivitiesFormBloc>()
                .add(MyLocalActivitiesFormEvent.locationChanged(result.desc));
              }
            },
            onChanged: (value) => context
                .read<MyLocalActivitiesFormBloc>()
                .add(MyLocalActivitiesFormEvent.locationChanged(value)),
            validator: (_) {
              final location = context.read<MyLocalActivitiesFormBloc>().state.activity.location;
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