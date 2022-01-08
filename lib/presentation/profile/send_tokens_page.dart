import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/reward_user/reward_user_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/operation_successful_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/stepper_widget.dart';
import 'package:r_home/presentation/profile/widgets/select_amout_reward_widget.dart';
import 'package:r_home/presentation/profile/widgets/select_guest_reward_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class SendTokensPage extends StatelessWidget {
  const SendTokensPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "R-HOME"),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => StepperBloc(),
          ),        
          BlocProvider(
            create: (BuildContext context) => RewardUserBloc(),
          ),
        ],
        child: BlocBuilder<RewardUserBloc, RewardUserState>(
          builder: (context, state) {
            int currentIndex = context.watch<StepperBloc>().state.selectedIndex;

            String guestName = context.watch<RewardUserBloc>().state.guestName;
            double amount = context.watch<RewardUserBloc>().state.amount;

            String title = "";
            switch (currentIndex) {
              case 0:
                title = "Select the user:";
                break;
              case 1:
                title = "Slide to choose the amount of tokens you want to send:";
                break;
              case 2:
                title = "You have rewarded the guest successfully!";
                break;
              default:
            }

            return Center(
              child: Column(
                children: [
                  StepperWidget(numberOfSteps: 2, totalWidth: 320, stepWidth: 30, separatorWidth: 50, title: title, titleAlignment: Alignment.centerLeft, titleTextAlignment: TextAlign.left,),
                  if (currentIndex == 0) ...[
                    const SelectGuestRewardWidget(guests: ["Maria", "Jose", "Alberto", "Maria2", "Jose2", "Alberto2", "Maria3", "Jose3", "Alberto3"]),
                  ] else if (currentIndex == 1) ...[
                    const SelectAmountRewardWidget(),
                  ] else if (currentIndex == 2) ...[
                    OperationSuccessfulWidget(
                      buttonText: "Back to My Wallet",
                      onPressed: () => AutoRouter.of(context).popUntilRouteWithName(WalletPageRoute.name)
                    ),
                  ],
                  if (currentIndex != 2) ...[
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
                              text: 'Next',
                              disabled: (guestName.isEmpty && currentIndex == 0) | (amount == 0 && currentIndex == 1),
                              onPressed: () => context.read<StepperBloc>().add(const StepperEvent.incrementIndex()),
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
                  ]
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
