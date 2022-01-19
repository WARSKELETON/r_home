import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/disputes/widgets/disputes_page_widget.dart';

class DisputesPage extends StatelessWidget {
  const DisputesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Disputes"),
      body: DipsutesPageWidget(title: "Solve your rental issues with the help of the community", imageAsset: "assets/icons/dispute-resolution.jpg"),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
