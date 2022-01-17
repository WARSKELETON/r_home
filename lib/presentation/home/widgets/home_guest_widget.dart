import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomeGuestWidget extends StatelessWidget {
  const HomeGuestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 275,
          child: HorizontalScrollWidget(
              title: "Places to Stay",
              isExplore: true,
              onPressed: () =>
                  AutoRouter.of(context).push(RentAHomePageRoute())),
        ),
        const Divider(
          thickness: 8,
          height: 40,
          color: Color(0xFFE5E5E5),
        ),
        SizedBox(
          height: 275,
          child: HorizontalScrollWidget(
                  title: "My Stays",
                  onPressed: () =>
                      AutoRouter.of(context).push(HomesPageRoute()
                )
            )
          ),
      ],
    );
  }
}
