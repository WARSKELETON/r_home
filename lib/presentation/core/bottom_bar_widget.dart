import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/bottom_bar/bottom_bar_bloc.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class BottomBarWidget extends StatelessWidget {
  BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.question_answer),
          label: 'Disputes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: context.watch<BottomBarBloc>().state.selectedIndex,
      selectedItemColor: Colors.red,
      onTap: (index) {
        context.read<BottomBarBloc>().add(BottomBarEvent.changeIndex(index));
        switch (index) {
          case 1:
            AutoRouter.of(context).replace(const SplashPageRoute());
            break;
          default:
            AutoRouter.of(context).replace(const TestPageRoute());
        }
      },
    );
  }
}
