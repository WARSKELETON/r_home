import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/disputes/widgets/dispute_type_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class StartDisputesPage extends StatelessWidget {
  const StartDisputesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Start a Dispute"),
      body: Center(
        child: SingleChildScrollView(
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
                elevation: 10,
                title: "Problems with Payments",
                height: 100,
                fontSize: 20,
                svgSize: 75,
                paddingText: const EdgeInsets.only(left: 40.0, top: 5),
                svgPath: "assets/icons/problemsPayments.svg",
                onPressed: () => AutoRouter.of(context).push(ProblemsWithPaymentsPageRoute(disputeCategory: DisputeCategory.problems_with_payments))
              ),
              const SizedBox(
                height: 50,
              ),
              DisputeTypeWidget(
                elevation: 10,
                title: "Damages in Properties",
                height: 100,
                fontSize: 20,
                svgSize: 75,
                paddingText: const EdgeInsets.only(left: 40.0, top: 5),
                svgPath: "assets/icons/damagesInProperty.svg",
                onPressed: () => AutoRouter.of(context).push(GeneralDisputesPageRoute(disputeCategory: DisputeCategory.damages_in_properties))
              ),
              const SizedBox(
                height: 50,
              ),
              DisputeTypeWidget(
                elevation: 10,
                title: "False Advertisement",
                height: 100,
                fontSize: 20,
                svgSize: 75,
                paddingText: const EdgeInsets.only(left: 40.0, top: 5),
                svgPath: "assets/icons/falseAdvertisement.svg",
                onPressed: () => AutoRouter.of(context).push(GeneralDisputesPageRoute(disputeCategory: DisputeCategory.false_advertisement))
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
