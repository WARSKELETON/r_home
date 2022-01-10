import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';

class DisputeTitleField extends HookWidget {
  const DisputeTitleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<DisputesFormBloc, DisputesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.dispute.title;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Dispute Title',
              counterText: '',
            ),
            onChanged: (value) => context
                .read<DisputesFormBloc>()
                .add(DisputesFormEvent.titleChanged(value)),
            validator: (_) {
              final title = context.read<DisputesFormBloc>().state.dispute.title;
              if (title.isEmpty) {
                return "Please enter the activity's title.";
              }
              return null;
            }
          ));
        },
    );
  }
}