import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_repository.dart';

import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/circle_icon_flat_button_widget.dart';
import 'package:r_home/presentation/my_homes_form/widgets/carousel_with_add_widget.dart';
import 'package:r_home/presentation/my_homes_form/widgets/guests_field_widget.dart';
import 'package:r_home/presentation/my_homes_form/widgets/home_name_field_widget.dart';
import 'package:r_home/presentation/my_homes_form/widgets/image_carousel_home_widget.dart';
import 'package:r_home/presentation/my_homes_form/widgets/location_field_widget.dart';
import 'package:r_home/presentation/my_homes_form/widgets/price_field_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class MyHomesForm extends StatelessWidget {
  final Home? editedHome;

  const MyHomesForm({Key? key, this.editedHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MyHomesFormBloc(
            HomesRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance
              ),
              FirebaseStorage.instance
            ),
            LocalActivitiesRepository(
              FirebaseFirestore.instance,
              FirebaseAuthFacade(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseFirestore.instance
              ),
              FirebaseStorage.instance
            )
          )..add(MyHomesFormEvent.initialize(optionOf(editedHome))),
        ),
      ],
      child: BlocConsumer<MyHomesFormBloc, MyHomesFormState>(
        listenWhen: (p, c) => p.isSaving != c.isSaving,
        listener: (context, state) {
          if (!state.isSaving) {
            AutoRouter.of(context).pop();
          }
        },
        builder: (context, state) {
          final isEditing = context.read<MyHomesFormBloc>().state.isEditing;
          final localActivities = context.watch<MyHomesFormBloc>().state.localActivities;
          final imagesPaths = context.watch<MyHomesFormBloc>().state.imagePaths;
          final formHome = context.watch<MyHomesFormBloc>().state.home;
          final disabled = formHome.isHomeInvalid() || (imagesPaths.isEmpty && !isEditing);

          return Scaffold(
            appBar: AppBarWidget(
              title: isEditing ? "Edit Home" : "Add a new Home",
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircleIconFlatButtonWidget(
                      onPressed: () => disabled ? null : context.read<MyHomesFormBloc>().add(const MyHomesFormEvent.submit()),
                      icon: Icon(
                        Icons.check,
                        color: Theme.of(context).colorScheme.primaryBlue.withOpacity(disabled ? 0.3 : 1),
                      ),
                      backgroundColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(disabled ? 0.1 : 0.4), 
                      splashColor: Colors.black,
                      size: 1,
                    ),
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: Form(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HomeNameField(),
                          const LocationField(),
                          const PriceField(),
                          const GuestsField(),
                          if (!isEditing) ImageCarouselHomeWidget(title: "Selected Images*", imagesPath: imagesPaths),
                          CarouselWithAddWidget(title: "Selected Activities", localActivities: localActivities),
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const BottomBarWidget(),
          );
        },
      ),
    );
  }
}
