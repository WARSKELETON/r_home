import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/my_homes/my_homes_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/guests_field_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/home_name_field_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/location_field_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/price_field_widget.dart';

enum FormAction {
  addition, edition
}

class MyHomesForm extends StatelessWidget {
  final FormAction formAction;
  final Home? home;

  const MyHomesForm({Key? key, required this.formAction, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyHomesFormBloc(MyHomesRepository( FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance))),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBarWidget(
            title: "Add a new home",
            actions: [
              IconButton(
                onPressed: () => {
                  formAction == FormAction.addition ? 
                  context.read<MyHomesFormBloc>().add(const MyHomesFormEvent.onCreate()) :
                  context.read<MyHomesFormBloc>().add(MyHomesFormEvent.onUpdate(home!.name)),

                  AutoRouter.of(context).pop()
                },
                icon: const Icon(Icons.check),
                splashRadius: 20,
              )
            ],
          ),
          body: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (home == null) ...[
                    const HomeNameField(),
                    const LocationField(),
                    const PriceField(),
                    const GuestsField()
                  ] else ...[
                    HomeNameField(initialize: home!.name),
                    LocationField(initialize: home!.location),
                    PriceField(initialize: home!.price),
                    GuestsField(initializeMaxAdults: home!.maxAdults, initializeMaxChildren: home!.maxChildren, initializeMaxPets: home!.maxPets)
                  ]
                ],
              ),
            )
          ),
          bottomNavigationBar: const BottomBarWidget(),
        );
      }),
    );
  }
}
