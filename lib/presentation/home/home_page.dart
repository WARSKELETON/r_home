import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "R-HOME"),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 240,
              child: HorizontalScrollWidget(
                  buttonText: "Look for a home to stay",
                  subtitle: "Recommended for you:",
                  items: [1, 2, 3, 4]),
            ),
            SizedBox(
              height: 240,
              child: HorizontalScrollWidget(
                  buttonText: "Look for a home to stay",
                  subtitle: "My Stays",
                  items: [1, 2, 3, 4]),
            ),
            SizedBox(
              height: 240,
              child: HorizontalScrollWidget(
                  buttonText: "Look for a home to stay",
                  subtitle: "My Host Recommendations",
                  items: [1, 2, 3, 4]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
