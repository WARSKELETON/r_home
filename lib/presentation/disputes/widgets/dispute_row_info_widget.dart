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

          final _stake = dispute.initialStake + dispute.getUsersVoted().length * 10;

          return InkWell(
            splashColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
            onTap: onPressed,
            borderRadius: BorderRadius.circular(15.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 3.0, left: 1.0, right: 1.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: dispute.mainImageUrl.isNotEmpty ?
                          Image.network(
                          dispute.mainImageUrl,
                          width: MediaQuery.of(context).size.width * 0.35,
                          loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: Transform.scale(
                                scale: 0.5,
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              ),
                            );
                          },
                        ) : 
                        Image.asset("assets/icons/home2.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.55,
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
                          description: _stake.toStringAsFixed(2) + " staked",
                        ),
                        DisputeRowDetailWidget(
                          icon: const Icon(
                            RHomeIcon.profile,
                            size: 16,
                          ),
                          description: dispute.issuerUsername,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (opened) ...[
                                ChipWidget(
                                  width: _isOpened && _timer.inHours < 1 ? 200 : 100,
                                  title: _isOpened ? (_timer.inHours < 1 ? "CLOSING SOON" : "OPENED") : "CLOSED",
                                  isClickable: false,
                                  isChecked: false,
                                  borderColor: Theme.of(context).colorScheme.primaryBlue,
                                  backgroundColor: _isOpened ? (_timer.inHours < 1 ? const Color(0xFFFF8383) : const Color(0xFFD2E4A9)) : const Color(0xFFFAAAAA),
                                  textColor: _isOpened && _timer.inHours < 1 ? Colors.white : Theme.of(context).colorScheme.primaryBlue,
                                ),
                              ],
                              if (voted) ...[
                                ChipWidget(
                                  width: 120,
                                  title: dispute.getUsersVoted().contains(context.watch<AuthBloc>().state.user.id)
                                      ? "VOTED"
                                      : "NOT VOTED",
                                  isClickable: false,
                                  isChecked: false,
                                  borderColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
                                  backgroundColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
                                  textColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.6),
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
