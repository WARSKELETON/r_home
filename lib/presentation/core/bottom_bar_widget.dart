import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/bottom_bar/bottom_bar_bloc.dart';
import 'package:r_home/presentation/core/app_bar_selected_button_widget.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedIndex = context.watch<BottomBarBloc>().state.selectedIndex;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 80,
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                width: 2.5,
                color: Theme.of(context).colorScheme.primaryBlue
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: AppBarButtonSelectedWidget(title: "Disputes", icon: RHomeIcon.disputes, selected: _selectedIndex == 0, selectedIndex: 0)
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: AppBarButtonSelectedWidget(title: "Home", icon: RHomeIcon.home, selected: _selectedIndex == 1, selectedIndex: 1)
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: AppBarButtonSelectedWidget(title: "Profile", icon: RHomeIcon.profile, selected: _selectedIndex == 2, selectedIndex: 2)
            ),
          ]
        ),
      ]
    );
  }
}
