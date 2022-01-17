import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/homes/widgets/my_activity_homes_widget.dart';
import 'package:r_home/presentation/homes/widgets/my_homes_widget.dart';
import 'package:r_home/presentation/homes/widgets/my_stays_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomesPage extends StatelessWidget {
  final String? activityUuid;

  const HomesPage({Key? key, this.activityUuid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final currentUser = context.watch<AuthBloc>().state.user;

        return Scaffold(
          appBar: AppBarWidget(
            title: currentUser.role == "guest" ? "My Stays" : (currentUser.role == "host" ? "My Homes" : "Homes Associated"),
            actions: [
              if (currentUser.role == "guest") ...[
                IconButton(
                  onPressed: () =>
                      AutoRouter.of(context).push(RentAHomePageRoute()),
                  icon: const Icon(Icons.add),
                  splashRadius: 20,
                )
              ] else if (currentUser.role == "host") ...[
                IconButton(
                  onPressed: () => AutoRouter.of(context).push(MyHomesFormRoute()), 
                  icon: const Icon(Icons.add),
                  splashRadius: 20,
                )
              ]
            ],
          ),
          body: BlocProvider(
            create: (context) => HomesBloc(
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
            )..add(HomesEvent.initialize(currentUser, activityUuid)),
            child: currentUser.role == "guest" ?
                  const MyStaysWidget() : 
                  (currentUser.role == "host" ? const MyHomesWidget() : const MyActivityHomesWidget())
            ),
          bottomNavigationBar: const BottomBarWidget(),
        );
      },
    );
  }
}
