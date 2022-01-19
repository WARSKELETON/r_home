import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/presentation/home/horizontal_scroll_widget.dart';
import 'package:r_home/presentation/home/widgets/home_welcome_widget.dart';
import 'package:r_home/presentation/home/widgets/home_welcome_widget_small.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomeGuestWidget extends StatelessWidget {
  const HomeGuestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomesBloc, HomesState>(
      builder: (context, state) {
        final rentals = context.watch<HomesBloc>().state.rentals;

        return Column(
          children: [
            if (rentals.isEmpty) ...[
              HomeWelcomeWidget(title: "Ready to explore new places?", buttonText: "Rent Home", imageAsset: "assets/icons/guest-homepage.jpg", onPressed: () => AutoRouter.of(context).push(MyHomesFormRoute())),
            ] else ...[
              HomeWelcomeSmallWidget(title: "Ready to explore new places?", buttonText: "Rent Home", imageAsset: "assets/icons/guest-homepage.jpg", onPressed: () => AutoRouter.of(context).push(MyHomesFormRoute())),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 275,
                  child: HorizontalScrollWidget(
                      title: "Places to Stay",
                      isExplore: true,
                      onPressed: () =>
                          AutoRouter.of(context).push(RentAHomePageRoute())),
                ),
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
            ]
          ],
        );
      },
    );
  }
}
