import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_local_activities_form/my_local_activities_form_bloc.dart';
import 'package:r_home/domain/local_activities/local_activity.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/circle_icon_flat_button_widget.dart';
import 'package:r_home/presentation/my_local_activities_form/widgets/activity_contact_field_widget.dart';
import 'package:r_home/presentation/my_local_activities_form/widgets/activity_location_field_widget.dart';
import 'package:r_home/presentation/my_local_activities_form/widgets/activity_name_field_widget.dart';
import 'package:r_home/presentation/my_local_activities_form/widgets/activity_price_field_widget.dart';
import 'package:r_home/presentation/my_local_activities_form/widgets/image_carousel_local_activity_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class MyLocalActivitiesForm extends StatelessWidget {
  final LocalActivity? editedActivity;

  const MyLocalActivitiesForm({Key? key, this.editedActivity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (editedActivity != null) {
      return BlocProvider(
        create: (context) => MyLocalActivitiesFormBloc(
            LocalActivitiesRepository(
                FirebaseFirestore.instance,
                FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                    FirebaseFirestore.instance),
                    FirebaseStorage.instance))
          ..add(MyLocalActivitiesFormEvent.initialize(optionOf(editedActivity))),
        child: Scaffold(
          appBar: AppBarWidget(
            title: "Edit Activity",
            actions: [
              BlocBuilder<MyLocalActivitiesFormBloc, MyLocalActivitiesFormState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircleIconFlatButtonWidget(
                        onPressed: () => context.read<MyLocalActivitiesFormBloc>().add(const MyLocalActivitiesFormEvent.submit()),
                        icon: Icon(
                          Icons.check,
                          color: Theme.of(context).colorScheme.primaryBlue.withOpacity(1),
                        ),
                        backgroundColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.4), 
                        splashColor: Colors.black,
                        size: 1,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
          body: Column(
            children: [
              buildForm(),
            ],
          ),
          bottomNavigationBar: const BottomBarWidget(),
        ),
      );
    } else {
      return buildForm();
    }
  }

  Widget buildForm() {
    return BlocConsumer<MyLocalActivitiesFormBloc, MyLocalActivitiesFormState>(
      listenWhen: (p, c) => p.isSaving != c.isSaving,
      listener: (context, state) {
        if (!state.isSaving) {
          AutoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
        final imagesPaths = context.watch<MyLocalActivitiesFormBloc>().state.imagePaths;

        return Expanded(
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ActivityNameField(),
                  const ActivityLocationField(),
                  const ActivityPriceField(),
                  const ActivityContactField(),
                  if (editedActivity == null) ImageCarouselLocalActivityWidget(title: "Selected Images*", imagesPath: imagesPaths)
                ],
              ),
            )
          ),
        );
      },
    );
  }
}
