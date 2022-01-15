import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/home/widgets/home_guest_widget.dart';
import 'package:r_home/presentation/home/widgets/home_host_widget.dart';
import 'package:r_home/presentation/home/widgets/home_producer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "R-HOME"),
      body: SingleChildScrollView(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            final currentUser = context.watch<AuthBloc>().state.user;
            if (currentUser.role == "guest") {
              return const HomeGuestWidget();
            } else if (currentUser.role == "host") {
              return const HomeHostWidget();
            } else {
              return const HomeProducerWidget();
            }
          },
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
