import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/r_home_icon_icons.dart';

class PriceField extends HookWidget {
  const PriceField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<MyHomesFormBloc, MyHomesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.home.price.toString();
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixIcon: Icon(RHomeIcon.token),
              labelText: 'Price per Night',
              counterText: '',
            ),
            onChanged: (value) => context
                .read<MyHomesFormBloc>()
                .add(MyHomesFormEvent.priceChanged(double.parse(value))),
            validator: (_) {
            }
          ));
        },
    );
  }
}