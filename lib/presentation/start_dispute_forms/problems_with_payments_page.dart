import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/domain/disputes/dispute.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/disputes/disputes_repository.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/operation_successful_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/slider_tokens_widget.dart';
import 'package:r_home/presentation/core/stepper_widget.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:r_home/presentation/start_dispute_forms/widgets/consent_message_widget.dart';
import 'package:r_home/presentation/start_dispute_forms/widgets/info_message_widget.dart';
import 'package:r_home/presentation/start_dispute_forms/widgets/select_rental_widget.dart';

class ProblemsWithPaymentsPage extends StatelessWidget {
  final Dispute dispute;

  const ProblemsWithPaymentsPage({Key? key, required this.dispute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => StepperBloc(),
        ),
        BlocProvider(
          create: (context) => DisputesFormBloc(
            DisputesRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance
              ),
              FirebaseStorage.instance
            ),
            RentalsRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance
              )
            ),
            HomesRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance
              ),
              FirebaseStorage.instance
            )
          )..add(DisputesFormEvent.initialize(dispute)),
        ),
      ],
      child: BlocBuilder<StepperBloc, StepperState>(
        buildWhen: (p, c) => p.selectedIndex != c.selectedIndex,
        builder: (context, state) {
          int _currentIndex = context.read<StepperBloc>().state.selectedIndex;

          List<Home> _homes = context.watch<DisputesFormBloc>().state.homes;
          List<Rental> _rentals = context.watch<DisputesFormBloc>().state.rentals;
          String _rentalUuid = context.watch<DisputesFormBloc>().state.dispute.rentalUuid;
          double _initialStake = context.watch<DisputesFormBloc>().state.dispute.initialStake;

          String title = "";
          switch (_currentIndex) {
            case 0:
              title = "Consent form";
              break;
            case 1:
              title = "Select the home where the problem happened";
              break;
            case 2:
              title = "Slide to choose the amount of tokens you want to pay in order to intialize this dispute:";
              break;
            case 3:
              title = "You have created a dispute successfully!";
              break;
            default:
          }

          return Scaffold(
            appBar: AppBarWidget(title: context.watch<DisputesFormBloc>().state.dispute.category.replaceAll("_", " ").capitalize()),
            body: Center(
              child: Column(
                children: [
                  StepperWidget(
                    numberOfSteps: 3,
                    totalWidth: 320,
                    stepWidth: 30,
                    separatorWidth: 50,
                    title: title,
                    titleAlignment: Alignment.center,
                    titleTextAlignment: TextAlign.center,
                  ),
                  if (_currentIndex == 0) ...[
                    const ConsentMessageWidget(),
                  ] else if (_currentIndex == 1) ...[
                    SelectRentalWidget(rentals: _rentals, homes: _homes),
                  ] else if (_currentIndex == 2) ...[
                    SliderTokensWidget(value: context.watch<DisputesFormBloc>().state.dispute.initialStake, onChanged: (value) => context.read<DisputesFormBloc>().add(DisputesFormEvent.initialStakeChanged(value))),
                  ] else if (_currentIndex == 3) ...[
                    OperationSuccessfulWidget(
                      buttonText: "Back to Disputes",
                      onPressed: () => AutoRouter.of(context).pop()
                    ),
                  ],
                  if (_currentIndex != 3) ...[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Column(
                          children: [
                            if (_currentIndex == 2) ...[
                              const InfoMessageWidget(),
                            ],
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundedButtonWidget(
                                  text: 'Previous',
                                  disabled: _currentIndex == 0,
                                  onPressed: () => context
                                      .read<StepperBloc>()
                                      .add(const StepperEvent.decrementIndex()),
                                  backgroundColor: _currentIndex == 0
                                      ? Colors.grey
                                      : Colors.white,
                                  fontWeight: FontWeight.w400,
                                  textColor: _currentIndex == 0
                                      ? Colors.white
                                      : Theme.of(context).colorScheme.primaryBlue,
                                  fontSize: 16,
                                  height: 35,
                                  width: 120,
                                ),
                                RoundedButtonWidget(
                                  text: 'Next',
                                  disabled: (_rentalUuid.isEmpty && _currentIndex == 1) | (_initialStake == 0 && _currentIndex == 2),
                                  onPressed: () {
                                    if (_currentIndex == 2) {
                                      context.read<DisputesFormBloc>().add(const DisputesFormEvent.submit());
                                    }
                                    context.read<StepperBloc>().add(const StepperEvent.incrementIndex());
                                  },
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .primaryBlue,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.white,
                                  fontSize: 16,
                                  height: 35,
                                  width: 120,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ]
                ],
              ),
            ),
            bottomNavigationBar: const BottomBarWidget(),
          );
        },
      )
    );
  }
}
