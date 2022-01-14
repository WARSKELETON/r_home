import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/disputes/disputes_bloc.dart';
import 'package:r_home/domain/disputes/dispute.dart';

class ConfirmationDialog extends StatelessWidget {
  final DisputeVote vote;

  const ConfirmationDialog({Key? key, required this.vote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _message = vote == DisputeVote.favour
            ? "IN FAVOUR"
            : (vote == DisputeVote.against
                ? "AGAINST"
                : "IRRELEVANT");

    return BlocBuilder<DisputesBloc, DisputesState>(
      builder: (context, state) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                      left: 25, top: 30, right: 25, bottom: 5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 10),
                            blurRadius: 10),
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        "CONFIRMATION",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20),
                      Text("You are about to vote " + _message + ".\n Are you sure?",
                          style: const TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                      const SizedBox(height: 22),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.red),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context.read<DisputesBloc>().add(DisputesEvent.voteSubmit(context.read<AuthBloc>().state.user.id));
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Your vote was submitted.")));
                              },
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Text(
                                  "VOTE",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
