import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';

class DisputeDescriptionField extends HookWidget {
  const DisputeDescriptionField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<DisputesFormBloc, DisputesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.dispute.descritption;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            maxLines: 7,
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Dispute Subitle',
              counterText: '',
              alignLabelWithHint: true,
            ),
            onChanged: (value) => context
                .read<DisputesFormBloc>()
                .add(DisputesFormEvent.descriptionChanged(value)),
            validator: (_) {
              final name = context.read<DisputesFormBloc>().state.dispute.descritption;
              if (name.isEmpty) {
                return "Please enter the dispute's description.";
              }
              return null;
            }
          ));
        },
    );
  }
}