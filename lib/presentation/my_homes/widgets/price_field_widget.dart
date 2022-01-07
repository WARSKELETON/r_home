import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/r_home_icon_icons.dart';

class PriceField extends HookWidget {
  final double? initialize;

  const PriceField({Key? key, this.initialize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (initialize != null) context.read<MyHomesFormBloc>().add(MyHomesFormEvent.priceChanged(initialize!));
    final textEditingController = initialize == null ? useTextEditingController() : useTextEditingController(text: initialize.toString());

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
            decoration: const InputDecoration(
              prefixIcon: Icon(RHomeIcon.token),
              labelText: 'Price',
              counterText: '',
            ),
            enabled: !state.isEditing,
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