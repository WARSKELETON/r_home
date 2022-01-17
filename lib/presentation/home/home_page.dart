import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/bottom_bar/bottom_bar_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/home/widgets/home_guest_widget.dart';
import 'package:r_home/presentation/home/widgets/home_host_widget.dart';
import 'package:r_home/presentation/home/widgets/home_producer_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final currentUser = context.watch<AuthBloc>().state.user;

        if (currentUser.id != "id") {
          return Scaffold(
            appBar: AppBarWidget(
              title: "Hi, ${currentUser.name}",
              centerLeft: true,
              actions: [
                IconButton(
                  onPressed: () => {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.changeIndex(2)),
                    AutoRouter.of(context).replace(const ProfilePageRoute())
                  },
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(currentUser.photo == null
                        ? "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png"
                        : currentUser.photo!),
                  ),
                  splashRadius: 20,
                ),
              ],
            ),
            body: BlocProvider(
              create: (context) => HomesBloc(
                  RentalsRepository(
                      FirebaseFirestore.instance,
                      FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                          FirebaseFirestore.instance)),
                  HomesRepository(
                      FirebaseFirestore.instance,
                      FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
                          FirebaseFirestore.instance), FirebaseStorage.instance))
                ..add(HomesEvent.initialize(currentUser, null)),
              child: SingleChildScrollView(
                  child: currentUser.role == "guest"
                      ? const HomeGuestWidget()
                      : (currentUser.role == "host"
                          ? const HomeHostWidget()
                          : const HomeProducerWidget())),
            ),
            bottomNavigationBar: const BottomBarWidget(),
          );
        } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
            ));
        }
      },
    );
  }
}
