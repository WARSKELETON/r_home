// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "R-HOME"),
      body: Center(
        child: Text("splash cona"),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
