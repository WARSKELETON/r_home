import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/bottom_bar/bottom_bar_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'dart:math' as math;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Profile",
        leading: Transform.rotate(
          angle: 180 * math.pi / 180,
          child: IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
              context.read<BottomBarBloc>().add(const BottomBarEvent.changeIndex(1));
              AutoRouter.of(context).popUntilRouteWithName(const SplashPageRoute().routeName);
              AutoRouter.of(context).replace(const SignInPageRoute());
            },
            icon: const Icon(Icons.exit_to_app),
            splashRadius: 20,
          ),
        ),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            final currentUser = context.watch<AuthBloc>().state.user;

            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0, top: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.network(
                            currentUser.photo == null ? "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png" : currentUser.photo!),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currentUser.getUsername(),
                            style: const TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.7)
                              ),
                            ),
                          ),
                          Text(
                            currentUser.role.capitalize(),
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.primaryBlue
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50.0, right: 50.0, bottom: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            currentUser.name == null ? "name" : currentUser.name!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  currentUser.numTokens.toStringAsFixed(2),
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                              const Icon(RHomeIcon.token),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: RoundedButtonWidget(
                        text: 'WALLET',
                        onPressed: () => AutoRouter.of(context).push(const WalletPageRoute()),
                        backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.white,
                        fontSize: 20,
                        height: 45,
                        width: 310,
                        trailingIcon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        ),
                      ),
                    ),
                    if (currentUser.role == "producer") ...[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: RoundedButtonWidget(
                          text: 'MY ACTIVITIES',
                          onPressed: () => AutoRouter.of(context).push(const MyLocalActivitiesPageRoute()),
                          backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                          fontWeight: FontWeight.w400,
                          textColor: Colors.white,
                          fontSize: 20,
                          height: 45,
                          width: 310,
                          trailingIcon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ),
                      ),
                    ] else if (currentUser.role == "guest") ...[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: RoundedButtonWidget(
                          text: 'MY STAYS',
                          onPressed: () => AutoRouter.of(context).push(HomesPageRoute()),
                          backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                          fontWeight: FontWeight.w400,
                          textColor: Colors.white,
                          fontSize: 20,
                          height: 45,
                          width: 310,
                          trailingIcon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ),
                      ),
                    ] else if (currentUser.role == "host") ...[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: RoundedButtonWidget(
                          text: 'MY HOMES',
                          onPressed: () => AutoRouter.of(context).push(HomesPageRoute()),
                          backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                          fontWeight: FontWeight.w400,
                          textColor: Colors.white,
                          fontSize: 20,
                          height: 45,
                          width: 310,
                          trailingIcon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
