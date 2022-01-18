import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/reward_user/reward_user_bloc.dart';
import 'package:r_home/presentation/core/confirmation_dialog_widget.dart';

class SendTokensDialog extends StatelessWidget {
  final double tokens;
  final String username;
  final String routeNameToPopUntil;

  const SendTokensDialog({Key? key, required this.tokens, required this.username, required this.routeNameToPopUntil}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<RewardUserBloc, RewardUserState>(
      builder: (context, state) {
        return ConfirmationDialogWidget(
        action1: "CANCEL", 
        action2: "SEND", 
        message: "You are about to send ${tokens.toStringAsFixed(2)} tokens to user $username.",
        onPressed: () {
          context.read<RewardUserBloc>().add(const RewardUserEvent.sendTokens());
          AutoRouter.of(context).popUntilRouteWithName(routeNameToPopUntil);
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Your tokens were sent.")));
        },);
      },
    );
  }
}
