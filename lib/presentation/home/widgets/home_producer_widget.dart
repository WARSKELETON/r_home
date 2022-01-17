import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomeProducerWidget extends StatelessWidget {
  const HomeProducerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 275,
          child: HorizontalScrollWidget(
              title: "My Activities",
              onPressed: () => AutoRouter.of(context).push(const MyLocalActivitiesPageRoute())),
        ),
      ],
    );
  }
}
