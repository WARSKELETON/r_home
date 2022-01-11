
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/disputes/widgets/chip_widget.dart';
import 'package:r_home/presentation/disputes/widgets/dispute_row_detail_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';

class DisputeListRowWidget extends StatelessWidget {
  final Dispute dispute;
  final void Function()? onPressed;

  const DisputeListRowWidget({Key? key, required this.dispute, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 3.0, bottom: 3.0, left: 1.0, right: 1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/icons/dispute_alarm.png", width: 130)
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dispute.title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const DisputeRowDetailWidget(
                    icon: Icon(
                      RHomeIcon.search,
                      size: 16,
                    ),
                    description: "19h until end",
                  ),
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
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChipWidget(
                          width: 100,
                          title: "OPEN",
                          isClickable: false,
                          isChecked: false,
                          borderColor: Theme.of(context).colorScheme.primaryBlue,
                          backgroundColor: const Color(0xFFD2E4A9),
                          textColor: Theme.of(context).colorScheme.primaryBlue,
                        ),
                        ChipWidget(
                          width: 120,
                          title: "NOT VOTED",
                          isClickable: false,
                          isChecked: false,
                          borderColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
                          backgroundColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.1),
                          textColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.6),
                        ),
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
  }
}