import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/disputes/widgets/consent_message_widget.dart';

class GeneralDisputesPage extends StatelessWidget {
  const GeneralDisputesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Opening Dispute"),
      body: ConsentMessageWidget(),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
