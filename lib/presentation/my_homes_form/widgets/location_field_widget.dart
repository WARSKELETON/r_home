import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';

class LocationField extends HookWidget {
  const LocationField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<MyHomesFormBloc, MyHomesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.home.location;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.fmd_good),
              labelText: 'Location',
              counterText: '',
            ),
            onChanged: (value) => context
                .read<MyHomesFormBloc>()
                .add(MyHomesFormEvent.locationChanged(value)),
            validator: (_) {
              final location = context.read<MyHomesFormBloc>().state.home.location;
              if (location.isEmpty) {
                return "Please enter the home's location.";
              }
              return null;
            }
          ));
        },
    );
  }
}