import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "R-HOME"),
      body: Center(
        child: Text("Home cona"),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
