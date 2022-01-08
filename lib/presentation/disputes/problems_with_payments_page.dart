import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/disputes/widgets/select_home_widget.dart';

class ProblemsWithPaymentsPage extends StatelessWidget {
  const ProblemsWithPaymentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Problem with Payments"),
      body: SelectHomeWidget(homes: []),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
