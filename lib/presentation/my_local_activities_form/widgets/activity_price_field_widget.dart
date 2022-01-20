import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_local_activities_form/my_local_activities_form_bloc.dart';
import 'package:r_home/r_home_icon_icons.dart';

class ActivityPriceField extends HookWidget {
  const ActivityPriceField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<MyLocalActivitiesFormBloc, MyLocalActivitiesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.activity.price.toString();
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixIcon: Icon(RHomeIcon.token),
              labelText: 'Price*',
              counterText: '',
            ),
            onChanged: (value) => context
                .read<MyLocalActivitiesFormBloc>()
                .add(MyLocalActivitiesFormEvent.priceChanged(value == "" ? 0.0 : double.parse(value))),
            validator: (_) {
            }
          ));
        },
    );
  }
}