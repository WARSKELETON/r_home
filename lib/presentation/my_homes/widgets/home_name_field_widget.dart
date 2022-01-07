import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';

class HomeNameField extends HookWidget {
  final String? initialize;
  
  const HomeNameField({Key? key, this.initialize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (initialize != null) context.read<MyHomesFormBloc>().add(MyHomesFormEvent.nameChanged(initialize!));
    final textEditingController = useTextEditingController(text: initialize);

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
              labelText: 'Home Name',
              counterText: '',
            ),
            enabled: !state.isEditing,
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