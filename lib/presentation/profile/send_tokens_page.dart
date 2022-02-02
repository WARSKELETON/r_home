import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/reward_user/reward_user_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/domain/auth/domain_user.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/slider_tokens_widget.dart';
import 'package:r_home/presentation/core/stepper_widget.dart';
import 'package:r_home/presentation/profile/send_tokens_dialog.dart';
import 'package:r_home/presentation/profile/widgets/select_guest_reward_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class SendTokensPage extends StatelessWidget {
  const SendTokensPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Send Tokens"),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => StepperBloc(),
          ),
          BlocProvider(
            create: (BuildContext context) => RewardUserBloc(
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
            ..add(const RewardUserEvent.initialize()),
          ),
        ],
        child: BlocBuilder<RewardUserBloc, RewardUserState>(
          builder: (context, state) {
            final currentIndex = context.watch<StepperBloc>().state.selectedIndex;

            final _user = context.watch<AuthBloc>().state.user;

            final users = context.watch<RewardUserBloc>().state.users.where((user) => user.id != _user.id).toList();

            final beneficiary = context.watch<RewardUserBloc>().state.beneficiary;
            final amount = context.watch<RewardUserBloc>().state.amount;

            String title = "";
            switch (currentIndex) {
              case 0:
                title = "Select the ${_user.role == "host" ? "guest" : "host"}";
                break;
              case 1:
                title = "Slide to choose the amount of tokens you want to send";
                break;
              default:
            }

            return Center(
              child: Column(
                children: [
                  StepperWidget(numberOfSteps: 2, totalWidth: 320, stepWidth: 30, separatorWidth: 50, title: title, titleAlignment: Alignment.center, titleTextAlignment: TextAlign.center,),
                  if (currentIndex == 0) ...[
                    SelectUserRewardWidget(users: users),
                  ] else if (currentIndex == 1) ...[
                    SliderTokensWidget(value: context.watch<RewardUserBloc>().state.amount, onChanged: (value) => context.read<RewardUserBloc>().add(RewardUserEvent.changeRewardAmount(value))),
                  ],
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RoundedButtonWidget(
                            text: 'Previous',
                            disabled: currentIndex == 0,
                            onPressed: () => context.read<StepperBloc>().add(const StepperEvent.decrementIndex()),
                            backgroundColor: currentIndex == 0 ? Colors.grey : Colors.white,
                            fontWeight: FontWeight.w400,
                            textColor: currentIndex == 0 ? Colors.white : Theme.of(context).colorScheme.primaryBlue,
                            fontSize: 16,
                            height: 35,
                            width: 120,
                          ),
                          RoundedButtonWidget(
                            text: currentIndex == 1 ? 'Finish' : 'Next',
                            disabled: (beneficiary == DomainUser.empty() && currentIndex == 0) | (amount == 0 && currentIndex == 1),
                            onPressed: () => currentIndex == 1 ? 
                            showDialog(context: context,
                              builder: (_) => BlocProvider.value(
                                value: context.read<RewardUserBloc>(),
                                child: SendTokensDialog(tokens: amount, username: beneficiary.getUsername(), routeNameToPopUntil: ProfilePageRoute.name),
                              )
                            ) : context.read<StepperBloc>().add(const StepperEvent.incrementIndex()),
                            backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                            fontWeight: FontWeight.w400,
                            textColor: Colors.white,
                            fontSize: 16,
                            height: 35,
                            width: 120,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        )
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
