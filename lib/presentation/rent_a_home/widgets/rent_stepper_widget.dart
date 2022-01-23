import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/presentation/core/operation_successful_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/stepper_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/date_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/payment_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rental_guests_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/select_home_field_widget.dart';

class RentStepperWidget extends StatelessWidget {
  const RentStepperWidget({Key? key}) : super(key: key);

  int nightsBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  double totalPrice(int nights, double pricePerNight, int singleFee) {
    return (nights * pricePerNight) + singleFee;
  }

  String getDateString(DateTime checkIn, DateTime checkOut) {
    return checkIn.day.toString() + "/" + checkIn.month.toString() + "/" + checkIn.year.toString() + " - " + checkOut.day.toString() + "/" + checkOut.month.toString() + "/" + checkOut.year.toString();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepperBloc, StepperState>(
        buildWhen: (p, c) => p.selectedIndex != c.selectedIndex,
        builder: (context, state) {
          int currentIndex =
              context.read<StepperBloc>().state.selectedIndex;
          DateTime? checkIn = context.watch<RentAHomeBloc>().state.checkIn;
          DateTime? checkOut = context.watch<RentAHomeBloc>().state.checkOut;
          int numAdults = context.watch<RentAHomeBloc>().state.idealRental.numAdults;
          int numChildren = context.watch<RentAHomeBloc>().state.idealRental.numChildren;
          int numPets = context.watch<RentAHomeBloc>().state.idealRental.numPets;
          String paymentMethod = context.watch<RentAHomeBloc>().state.idealRental.paymentMethod;
          String location = context.watch<RentAHomeBloc>().state.location;
          Home selectedHome = context.watch<RentAHomeBloc>().state.selectedHome;

          String title = "";
          switch (currentIndex) {
            case 0:
              title = "When are you staying in $location?";
              break;
            case 1:
              title =
                  "How many guests in $location for ${getDateString(checkIn!, checkOut!)}?";
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
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              final numTokens = context.watch<AuthBloc>().state.user.numTokens;

                              return BlocBuilder<RentAHomeBloc, RentAHomeState>(
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
                                    disabled: (currentIndex == 0 && (checkIn == null || checkOut == null)) || (currentIndex == 1 && numAdults == 0) || (currentIndex == 2 && selectedHome.name == "") || (currentIndex == 3 && paymentMethod == "") || (currentIndex == 3 && paymentMethod.toPaymentMethod() == PaymentMethod.token &&  numTokens < totalPrice(nightsBetween(checkIn!, checkOut!), selectedHome.price, 3)),
                                    fontWeight: FontWeight.w400,
                                    textColor: Colors.white,
                                    fontSize: 16,
                                    height: 35,
                                    width: 120,
                                  );
                                },
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
      );
  }
}
