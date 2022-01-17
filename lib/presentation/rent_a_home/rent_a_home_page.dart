import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/rent_a_home/rent_a_home_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/explore_widget.dart';
import 'package:r_home/presentation/rent_a_home/widgets/rent_stepper_widget.dart';

class RentAHomePage extends StatelessWidget {
  final String? location;

  const RentAHomePage({Key? key, this.location}) : super(key: key);

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
                          FirebaseFirestore.instance)),
                  HomesRepository(
                      FirebaseFirestore.instance,
                      FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                          FirebaseFirestore.instance)))
                ..add(RentAHomeEvent.initialize(optionOf(null), location)),
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
