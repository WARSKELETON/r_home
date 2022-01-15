import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/home/widgets/home_guest_widget.dart';
import 'package:r_home/presentation/home/widgets/home_host_widget.dart';
import 'package:r_home/presentation/home/widgets/home_producer_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final currentUser = context.watch<AuthBloc>().state.user;

        return Scaffold(
          appBar: AppBarWidget(
            title: "Hi, ${currentUser.name}",
            centerLeft: true,
            actions: [
              IconButton(
                onPressed: () =>
                    AutoRouter.of(context).push(const ProfilePageRoute()),
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.network(currentUser.photo == null
                      ? "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png"
                      : currentUser.photo!),
                ),
                splashRadius: 20,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: currentUser.role == "guest" ?
                  const HomeGuestWidget() :
                (currentUser.role == "host" ? const HomeHostWidget() : const HomeProducerWidget())
          ),
          bottomNavigationBar: const BottomBarWidget(),
        );
      },
    );
  }
}
