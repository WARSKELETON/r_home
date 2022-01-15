import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/reward_user/reward_user_bloc.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/slider_tokens_widget.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:r_home/presentation/profile/send_tokens_dialog.dart';

class RewardUserPage extends StatelessWidget {
  final DomainUser user;
  final String routeNameToPopUntil;

  const RewardUserPage({Key? key, required this.user, required this.routeNameToPopUntil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Reward ${user.name}"),
      body: BlocProvider(
        create: (context) => RewardUserBloc(
              RentalsRepository(
                FirebaseFirestore.instance,
                FirebaseAuthFacade(
                  FirebaseAuth.instance,
                  GoogleSignIn(),
                  FirebaseFirestore.instance
                )
              ),
              FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance)
            )
            ..add(const RewardUserEvent.initialize())
            ..add(RewardUserEvent.rewardGuest(user)),
        child: BlocBuilder<RewardUserBloc, RewardUserState>(
          builder: (context, state) {
            double _tokenAmount = context.watch<RewardUserBloc>().state.amount;

            return Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0, top: 30.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.network(user.photo == null
                          ? "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png"
                          : user.photo!),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Text(
                      "${user.role.capitalize()}: ${user.getUsername()}",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  SliderTokensWidget(
                      value: _tokenAmount,
                      onChanged: (value) => context
                          .read<RewardUserBloc>()
                          .add(RewardUserEvent.changeRewardAmount(value))),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: RoundedButtonWidget(
                      text: "REWARD ${user.role.toUpperCase()}",
                      onPressed: () => showDialog(context: context,
                        builder: (_) => BlocProvider.value(
                          value: context.read<RewardUserBloc>(),
                          child: SendTokensDialog(tokens: _tokenAmount.round(), username: user.getUsername(), routeNameToPopUntil: routeNameToPopUntil),
                        )
                      ),
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryBlue,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.white,
                      fontSize: 20,
                      height: 45,
                      width: 310,
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
