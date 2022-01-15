import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class DisputesPage extends StatelessWidget {
  const DisputesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Disputes"),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 50.0),
              child: RoundedButtonWidget(
                text: 'START A DISPUTE',
                onPressed: () => AutoRouter.of(context).push(StartDisputesPageRoute()),
                backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                fontWeight: FontWeight.w400,
                textColor: Colors.white,
                fontSize: 20,
                height: 45,
                width: 320,
                trailingIcon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: RoundedButtonWidget(
                text: 'SEE MY DISPUTES',
                onPressed: () => AutoRouter.of(context).push(DisputesListPageRoute(privateMode: true)),
                backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                fontWeight: FontWeight.w400,
                textColor: Colors.white,
                fontSize: 20,
                height: 45,
                width: 320,
                trailingIcon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                ),
              ),
            ),
            RoundedButtonWidget(
              text: 'PARTICIPATE IN DISPUTE',
              onPressed: () => AutoRouter.of(context).push(DisputesListPageRoute(privateMode: false)),
              backgroundColor: Theme.of(context).colorScheme.primaryBlue,
              fontWeight: FontWeight.w400,
              textColor: Colors.white,
              fontSize: 20,
              height: 45,
              width: 320,
              trailingIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
