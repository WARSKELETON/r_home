import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/disputes/disputes_bloc.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/presentation/core/confirmation_dialog_widget.dart';

class VoteConfirmationDialog extends StatelessWidget {
  final DisputeVote vote;

  const VoteConfirmationDialog({Key? key, required this.vote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _message = "You are about to vote " + (vote == DisputeVote.favour
            ? "IN FAVOUR."
            : (vote == DisputeVote.against
                ? "AGAINST."
                : "IRRELEVANT."));

    _message += "\n This vote has a cost of 10 tokens.";

    return BlocBuilder<DisputesBloc, DisputesState>(
      builder: (context, state) {
        return ConfirmationDialogWidget(
        action1: "Cancel", 
        action2: "Pay & Vote", 
        message: _message,
        onPressed: () {
          context.read<DisputesBloc>().add(DisputesEvent.voteSubmit(context.read<AuthBloc>().state.user.id));
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Your vote was submitted.")));
        },);
      },
    );
  }
}
