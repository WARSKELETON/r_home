import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/operation_successful_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/stepper_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/date_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/explore_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/payment_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rent_stepper_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rental_guests_field_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/select_home_field_widget.dart';

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
                  FirebaseAuthFacade(
                    FirebaseAuth.instance,
                    GoogleSignIn(),
                    FirebaseFirestore.instance
                  )
                ),
                HomesRepository(
                  FirebaseFirestore.instance,
                  FirebaseAuthFacade(
                    FirebaseAuth.instance, GoogleSignIn(),
                    FirebaseFirestore.instance
                  ),
                FirebaseStorage.instance)
              )
                ..add(RentAHomeEvent.initialize(optionOf(null))),
            ),
          ],
          child: BlocBuilder<RentAHomeBloc, RentAHomeState>(
            builder: (context, state) {
              final location = context.watch<RentAHomeBloc>().state.location;
              if (location != "") {
                return const RentStepperWidget();
              } else {
                return const ExploreWidget();
              }
            },
          )),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
