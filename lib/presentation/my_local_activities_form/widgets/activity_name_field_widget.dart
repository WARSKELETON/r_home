import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_local_activities_form/my_local_activities_form_bloc.dart';

class ActivityNameField extends HookWidget {
  const ActivityNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<MyLocalActivitiesFormBloc, MyLocalActivitiesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.activity.name;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Activity Name',
              counterText: '',
            ),
            onChanged: (value) => context
                .read<MyLocalActivitiesFormBloc>()
                .add(MyLocalActivitiesFormEvent.nameChanged(value)),
            validator: (_) {
              final name = context.read<MyLocalActivitiesFormBloc>().state.activity.name;
              if (name.isEmpty) {
                return "Please enter the activity's name.";
              }
              return null;
            }
          ));
        },
    );
  }
}