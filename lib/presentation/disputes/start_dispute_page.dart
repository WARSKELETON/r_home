import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/disputes/general_disputes_page.dart';
import 'package:r_home/presentation/disputes/widgets/dispute_type_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class StartDisputesPage extends StatelessWidget {
  const StartDisputesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Start a Dispute"),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: Text(
                "Which type of dispute do you want to create?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            DisputeTypeWidget(
              title: "Problems with Payments",
              svgPath: "assets/icons/problemsPayments.svg",
              onPressed: () => AutoRouter.of(context).push(const ProblemsWithPaymentsPageRoute())
            ),
            const SizedBox(
              height: 50,
            ),
            DisputeTypeWidget(
              title: "Damages in Properties",
              svgPath: "assets/icons/damagesInProperty.svg",
              onPressed: () => AutoRouter.of(context).push(const GeneralDisputesPageRoute())
            ),
            const SizedBox(
              height: 50,
            ),
            DisputeTypeWidget(
              title: "False Advertisement",
              svgPath: "assets/icons/falseAdvertisement.svg",
              onPressed: () => AutoRouter.of(context).push(const GeneralDisputesPageRoute())
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
