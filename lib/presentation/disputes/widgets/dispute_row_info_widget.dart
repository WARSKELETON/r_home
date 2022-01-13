import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/timer/timer_bloc.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/disputes/widgets/chip_widget.dart';
import 'package:r_home/presentation/disputes/widgets/dispute_row_detail_widget.dart';
import 'package:r_home/r_home_icon_icons.dart';

class DisputeListRowWidget extends StatelessWidget {
  final Dispute dispute;
  final bool opened;
  final bool voted;
  final void Function()? onPressed;

  const DisputeListRowWidget(
      {Key? key,
      required this.dispute,
      required this.onPressed,
      required this.opened,
      required this.voted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _closingTime = dispute.creationDate.add(const Duration(days: 2));

    return BlocProvider(
      create: (context) => TimerBloc()..add(TimerEvent.initialize(_closingTime)),
      child: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          final _timer = context.read<TimerBloc>().state.timeToEnd;
          final _isOpened = !_closingTime.isBefore(DateTime.now());
          return InkWell(
            splashColor:
                Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
            onTap: onPressed,
            borderRadius: BorderRadius.circular(15.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 3.0, left: 1.0, right: 1.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/icons/dispute_alarm.png",
                          width: 130)),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dispute.title,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        DisputeRowDetailWidget(
                            icon: const Icon(
                              Icons.timer,
                              size: 16,
                            ),
                            description: _isOpened
                                ? '${_timer.inHours} : ${DateFormat("mm : ss").format(DateTime.fromMillisecondsSinceEpoch(_timer.inMilliseconds))}'
                                : "Dispute Closed"),
                        DisputeRowDetailWidget(
                          icon: const Icon(
                            RHomeIcon.token,
                            size: 16,
                          ),
                          description: dispute.stake.toString() + " staked",
                        ),
                        DisputeRowDetailWidget(
                          icon: const Icon(
                            RHomeIcon.profile,
                            size: 16,
                          ),
                          description: dispute.issuerUsername,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (opened) ...[
                                ChipWidget(
                                  width: 100,
                                  title: "OPEN",
                                  isClickable: false,
                                  isChecked: false,
                                  borderColor:
                                      Theme.of(context).colorScheme.primaryBlue,
                                  backgroundColor: const Color(0xFFD2E4A9),
                                  textColor:
                                      Theme.of(context).colorScheme.primaryBlue,
                                ),
                              ],
                              if (voted) ...[
                                ChipWidget(
                                  width: 120,
                                  title: dispute.usersVoted.contains(context.watch<AuthBloc>().state.user.id)
                                      ? "VOTED"
                                      : "NOT VOTED",
                                  isClickable: false,
                                  isChecked: false,
                                  borderColor: Theme.of(context)
                                      .colorScheme
                                      .primaryBlue
                                      .withOpacity(0.1),
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .primaryBlue
                                      .withOpacity(0.1),
                                  textColor: Theme.of(context)
                                      .colorScheme
                                      .primaryBlue
                                      .withOpacity(0.6),
                                ),
                              ],
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
