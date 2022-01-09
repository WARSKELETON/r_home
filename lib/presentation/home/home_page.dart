import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';
import 'package:r_home/presentation/rent_a_home/rent_a_home_page.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "R-HOME"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 275,
              child: HorizontalScrollWidget(
                  title: "Recommended for you",
                  items: [1, 2, 3, 4],
                  onPressed: () => AutoRouter.of(context).push(const MyHomesPageRoute())),
            ),
            Divider(
              thickness: 8,
              height: 40,
              color: Color(0xFFE5E5E5),
            ),
            SizedBox(
              height: 275,
              child: HorizontalScrollWidget(
                  title: "My Stays",
                  items: [1, 2, 3, 4],
                  onPressed: () => AutoRouter.of(context).push(const RentAHomePageRoute())),
            ),
            Divider(
              thickness: 8,
              height: 40,
              color: Color(0xFFE5E5E5),
            ),
            SizedBox(
              height: 275,
              child: HorizontalScrollWidget(
                  title: "My Host Recommendations",
                  items: [1, 2, 3, 4]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
