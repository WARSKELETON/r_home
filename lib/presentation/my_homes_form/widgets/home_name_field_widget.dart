import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';

class HomeNameField extends HookWidget {
  const HomeNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<MyHomesFormBloc, MyHomesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.home.name;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Home Name*',
              counterText: '',
            ),
            onChanged: (value) => context
                .read<MyHomesFormBloc>()
                .add(MyHomesFormEvent.nameChanged(value)),
            validator: (_) {
              final name = context.read<MyHomesFormBloc>().state.home.name;
              if (name.isEmpty) {
                return "Please enter the home's name.";
              }
              return null;
            }
          ));
        },
    );
  }
}