import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/bottom_bar/bottom_bar_bloc.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(RHomeIcon.disputes),
          label: 'Disputes',
        ),
        BottomNavigationBarItem(
          icon: Icon(RHomeIcon.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(RHomeIcon.profile),
          label: 'Profile',
        ),
      ],
      currentIndex: context.watch<BottomBarBloc>().state.selectedIndex,
      selectedItemColor: Colors.red,
      onTap: (index) {
        context.read<BottomBarBloc>().add(BottomBarEvent.changeIndex(index));
        switch (index) {
          case 0:
            AutoRouter.of(context).replace(const DisputesPageRoute());
            break;
          case 1:
            AutoRouter.of(context).replace(const HomePageRoute());
            break;
          case 2:
            AutoRouter.of(context).replace(const ProfilePageRoute());
            break;
          default:
            AutoRouter.of(context).replace(const TestPageRoute());
        }
      },
    );
  }
}
