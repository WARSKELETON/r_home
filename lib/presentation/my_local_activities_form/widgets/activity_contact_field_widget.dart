import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_local_activities_form/my_local_activities_form_bloc.dart';

class ActivityContactField extends HookWidget {
  const ActivityContactField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<MyLocalActivitiesFormBloc, MyLocalActivitiesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.activity.contact.toString();
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.contact_phone),
              labelText: 'Contact*',
              counterText: '',
            ),
            onChanged: (value) => context
                .read<MyLocalActivitiesFormBloc>()
                .add(MyLocalActivitiesFormEvent.contactChanged(value == "" ? 0 : int.parse(value))),
            validator: (_) {
            }
          ));
        },
    );
  }
}