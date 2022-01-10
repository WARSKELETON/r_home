import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_local_activities_form/my_local_activities_form_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/operation_successful_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/stepper_widget.dart';
import 'package:r_home/presentation/my_local_activities_form/category_selection_page.dart';
import 'package:r_home/presentation/my_local_activities_form/my_local_activities_form.dart';
import 'package:r_home/presentation/rent_a_home/widgets/date_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/payment_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rental_guests_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/select_home_field_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class RentAHomePage extends StatelessWidget {
  const RentAHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Rent a Home"),
      body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext context) => StepperBloc(),
            ),
            BlocProvider(
              create: (context) => RentAHomeBloc(
                  RentalsRepository(
                      FirebaseFirestore.instance,
                      FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                          FirebaseFirestore.instance)), HomesRepository(
                      FirebaseFirestore.instance,
                      FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                          FirebaseFirestore.instance)))
                ..add(RentAHomeEvent.initialize(optionOf(null))),
            ),
          ],
          child: BlocBuilder<StepperBloc, StepperState>(
            buildWhen: (p, c) => p.selectedIndex != c.selectedIndex,
            builder: (context, state) {
              int currentIndex =
                  context.read<StepperBloc>().state.selectedIndex;
              DateTime? checkIn = context.watch<RentAHomeBloc>().state.checkIn;
              DateTime? checkOut = context.watch<RentAHomeBloc>().state.checkOut;
              int numAdults = context.watch<RentAHomeBloc>().state.idealRental.numAdults;
              int numChildren = context.watch<RentAHomeBloc>().state.idealRental.numChildren;
              int numPets = context.watch<RentAHomeBloc>().state.idealRental.numPets;
              Home selectedHome = context.watch<RentAHomeBloc>().state.selectedHome;

              String title = "";
              switch (currentIndex) {
                case 0:
                  title = "When are you staying in this home?";
                  break;
                case 1:
                  title =
                      "How many guests?";
                  break;
                case 2:
                  title = selectedHome.name != "" ? selectedHome.name : "Select a home";
                  break;
                case 3:
                  title = "Confirm payment";
                  break;
                case 4:
                  title = "Booked home successfully!";
                  break;
                default:
              }

              return Center(
                child: Column(
                  children: [
                    StepperWidget(
                      numberOfSteps: 4,
                      totalWidth: 320,
                      stepWidth: 30,
                      separatorWidth: 50,
                      title: title,
                      titleAlignment: Alignment.center,
                      titleTextAlignment: TextAlign.center,
                    ),
                    if (currentIndex == 0) ...[
                      const DateField(),
                    ] else if (currentIndex == 1) ...[
                      const RentalGuestsField(),
                    ] else if (currentIndex == 2) ...[
                      const SelectHomeField(),
                    ] else if (currentIndex == 3) ...[
                      const PaymentField(),
                    ] else if (currentIndex == 4) ...[
                      OperationSuccessfulWidget(
                          buttonText: "Back to My Stays",
                          onPressed: () => AutoRouter.of(context)
                              .pop()),
                    ],
                    if (currentIndex != 4) ...[
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
                                onPressed: () {
                                    if (currentIndex == 2 && selectedHome.name != "") {
                                      context
                                      .read<RentAHomeBloc>()
                                      .add(RentAHomeEvent.homeChanged(Home.empty()));
                                    } else {
                                      context
                                      .read<StepperBloc>()
                                      .add(const StepperEvent.decrementIndex());
                                    }
                                  },
                                backgroundColor: currentIndex == 0
                                    ? Colors.grey
                                    : Colors.white,
                                fontWeight: FontWeight.w400,
                                textColor: currentIndex == 0
                                    ? Colors.white
                                    : Theme.of(context).colorScheme.primaryBlue,
                                fontSize: 16,
                                height: 35,
                                width: 120,
                              ),
                              BlocBuilder<RentAHomeBloc, RentAHomeState>(
                                builder: (context, state) {
                                  return RoundedButtonWidget(
                                    text: 'Next',
                                    onPressed: () {
                                      if (currentIndex == 1) {
                                        context.read<RentAHomeBloc>().add(const RentAHomeEvent.watchAvailableHomes());
                                      } else if (currentIndex == 3) {
                                        context.read<RentAHomeBloc>().add(const RentAHomeEvent.submit());
                                      }
                                      context.read<StepperBloc>().add(const StepperEvent.incrementIndex());
                                    },
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .primaryBlue,
                                    disabled: (currentIndex == 0 && (checkIn == null || checkOut == null)) || (currentIndex == 1 && (numAdults == 0 && numChildren == 0 && numPets == 0)) || (currentIndex == 2 && selectedHome.name == ""),
                                    fontWeight: FontWeight.w400,
                                    textColor: Colors.white,
                                    fontSize: 16,
                                    height: 35,
                                    width: 120,
                                  );
                                },
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
          )),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
