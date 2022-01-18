import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';
import 'package:r_home/presentation/core/confirmation_dialog_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class PayDisputeDialog extends StatelessWidget {
  final double tokens;

  const PayDisputeDialog({Key? key, required this.tokens}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<DisputesFormBloc, DisputesFormState>(
      builder: (context, state) {
        return ConfirmationDialogWidget(
        action1: "CANCEL", 
        action2: "SEND", 
        message: "You are about to pay ${tokens.toStringAsFixed(2)} tokens to open a dispute.",
        onPressed: () {
          context.read<DisputesFormBloc>().add(const DisputesFormEvent.submit());
          AutoRouter.of(context).popUntilRouteWithName(StartDisputesPageRoute.name);
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Your dispute was opened.")));
        },);
      },
    );
  }
}
