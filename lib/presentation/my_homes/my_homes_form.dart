import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
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

class MyHomesForm extends StatelessWidget {
  final Home? editedHome;

  const MyHomesForm({Key? key, this.editedHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyHomesFormBloc(MyHomesRepository(
          FirebaseFirestore.instance,
          FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
              FirebaseFirestore.instance)))
        ..add(MyHomesFormEvent.initialize(optionOf(editedHome))),
      child: BlocConsumer<MyHomesFormBloc, MyHomesFormState>(
        listenWhen: (p, c) =>
            p.isSaving != c.isSaving,
        listener: (context, state) {
          if (!state.isSaving) {
            AutoRouter.of(context).pop();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBarWidget(
              title: context.read<MyHomesFormBloc>().state.isEditing ? "Edit Home" : "Add a new Home",
              actions: [
                IconButton(
                  onPressed: () => context.read<MyHomesFormBloc>().add(const MyHomesFormEvent.submit()),
                  icon: const Icon(Icons.check),
                  splashRadius: 20,
                )
              ],
            ),
            body: Form(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HomeNameField(),
                  LocationField(),
                  PriceField(),
                  GuestsField()
                ],
              ),
            )),
            bottomNavigationBar: const BottomBarWidget(),
          );
        },
      ),
    );
  }
}
