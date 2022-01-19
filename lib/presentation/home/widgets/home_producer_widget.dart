import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/my_local_activities/my_local_activities_bloc.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';
import 'package:r_home/presentation/home/widgets/home_welcome_widget.dart';
import 'package:r_home/presentation/home/widgets/home_welcome_widget_small.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomeProducerWidget extends StatelessWidget {
  const HomeProducerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyLocalActivitiesBloc, MyLocalActivitiesState>(
      builder: (context, state) {
        final localActivities = context.watch<MyLocalActivitiesBloc>().state.localActivities;

        return Column(
          children: [
            if (localActivities.isEmpty) ...[
              HomeWelcomeWidget(title: "Share your activities with the world", buttonText: "Add Activity", imageAsset: "assets/icons/producer-homepage.jpg", onPressed: () => AutoRouter.of(context).push(const NewLocalAcitvityPageRoute())),
            ] else ...[
              HomeWelcomeSmallWidget(title: "Share your activities with the world", buttonText: "Add Activity", imageAsset: "assets/icons/producer-homepage.jpg", onPressed: () => AutoRouter.of(context).push(const NewLocalAcitvityPageRoute())),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 275,
                  child: HorizontalScrollWidget(
                    title: "My Activities",
                    onPressed: () => AutoRouter.of(context).push(const MyLocalActivitiesPageRoute())),
                ),
              ),
            ]
          ],
        );
      },
    );
  }
}
