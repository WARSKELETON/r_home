import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/bottom_bar/bottom_bar_bloc.dart';
import 'package:r_home/presentation/core/app_bar_selected_button_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  void popPastRoutes(BuildContext context, int previousIndex) {
    if (previousIndex == 0) {
      AutoRouter.of(context).popUntilRouteWithName(const DisputesPageRoute().routeName);
    } else if (previousIndex == 1) {
      AutoRouter.of(context).popUntilRouteWithName(const HomePageRoute().routeName);
    } else if (previousIndex == 2) {
      AutoRouter.of(context).popUntilRouteWithName(const ProfilePageRoute().routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarBloc, BottomBarState>(
      builder: (context, state) {
        final _selectedIndex = context.watch<BottomBarBloc>().state.selectedIndex;
        final _previousIndex = context.watch<BottomBarBloc>().state.previousIndex;

        return Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            height: 71,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                top: BorderSide(
                    width: 2.5,
                    color: Theme.of(context).colorScheme.primaryBlue),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: AppBarButtonSelectedWidget(
                  title: "Disputes",
                  icon: RHomeIcon.disputes,
                  selected: _selectedIndex == 0,
                  onPressed: () {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.changeIndex(0));
                    popPastRoutes(context, _previousIndex);
                    AutoRouter.of(context)
                        .replace(const DisputesPageRoute());
                  }
                )
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: AppBarButtonSelectedWidget(
                  title: "Home",
                  icon: RHomeIcon.home,
                  selected: _selectedIndex == 1,
                  onPressed: () {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.changeIndex(1));
                    popPastRoutes(context, _previousIndex);
                    AutoRouter.of(context).replace(const HomePageRoute());
                  }
                )
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: AppBarButtonSelectedWidget(
                  title: "Profile",
                  icon: RHomeIcon.profile,
                  selected: _selectedIndex == 2,
                  onPressed: () {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.changeIndex(2));
                    popPastRoutes(context, _previousIndex);
                    AutoRouter.of(context)
                        .replace(const ProfilePageRoute());
                  }
                )
              ),
            ]),
        ]);
      },
    );
  }
}
