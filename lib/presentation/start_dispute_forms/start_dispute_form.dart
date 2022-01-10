import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';
import 'package:r_home/presentation/start_dispute_forms/widgets/dispute_description_field_widget.dart';
import 'package:r_home/presentation/start_dispute_forms/widgets/dispute_title_field_widget.dart';

class StartDisputesForm extends StatelessWidget {
  const StartDisputesForm({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<DisputesFormBloc, DisputesFormState>(
      listenWhen: (p, c) => p.isSaving != c.isSaving,
      listener: (context, state) {
        if (!state.isSaving) {
          AutoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
        return Expanded(
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DisputeTitleField(),
                  DisputeDescriptionField(),
                ],
              ),
            )
          ),
        );
      },
    );
  }
}
