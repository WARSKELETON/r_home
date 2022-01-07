import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Profile"),
      body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0, top: 30.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                          state.user.photo == null ? "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png" : state.user.photo!),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Text(
                      "@" + (state.user.name == null ? "name" : state.user.name!.replaceAll(" ", "").toLowerCase()),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50.0, right: 50.0, bottom: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          state.user.name == null ? "name" : state.user.name!,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                state.user.numTokens.toString(),
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
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: RoundedButtonWidget(
                      text: 'WALLET',
                      onPressed: () => AutoRouter.of(context).push(const WalletPageRoute()),
                      backgroundColor: Colors.black,
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
                  RoundedButtonWidget(
                    text: 'MY ACTIVITIES',
                    onPressed: () {},
                    backgroundColor: Colors.black,
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
                ],
              ),
            );
          },
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
