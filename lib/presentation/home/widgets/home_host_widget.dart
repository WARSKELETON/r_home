import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';
import 'package:r_home/presentation/home/widgets/home_welcome_widget.dart';
import 'package:r_home/presentation/home/widgets/home_welcome_widget_small.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomeHostWidget extends StatelessWidget {
  const HomeHostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomesBloc, HomesState>(
      builder: (context, state) {
        final homes = context.watch<HomesBloc>().state.homes;

        return Column(
          children: [
            if (homes.isNotEmpty) ...[
              HomeWelcomeWidget(title: "Do you have a home to rent?", buttonText: "Add Home", imageAsset: "assets/icons/host-homepage.jpg", onPressed: () => AutoRouter.of(context).push(MyHomesFormRoute())),
            ] else ...[
              HomeWelcomeSmallWidget(title: "Do you have a home to rent?", buttonText: "Add Home", imageAsset: "assets/icons/host-homepage.jpg", onPressed: () => AutoRouter.of(context).push(MyHomesFormRoute())),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 275,
                  child: HorizontalScrollWidget(
                    title: "My Homes",
                    onPressed: () => AutoRouter.of(context).push(HomesPageRoute())
                  )
                ),
              ),
            ]
          ],
        );
      },
    );
  }
}
