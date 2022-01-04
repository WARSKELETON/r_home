import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/profile/profile_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "R-HOME"),
      body: BlocProvider(
        create: (context) => ProfileBloc(FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance))..add(const ProfileEvent.getDomainUser()),
        child: BlocBuilder<ProfileBloc, ProfileState>(
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
                      style: TextStyle(fontSize: 16),
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
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/token.svg',
                                width: 20)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: RoundedButtonWidget(
                      text: 'WALLET',
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
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
