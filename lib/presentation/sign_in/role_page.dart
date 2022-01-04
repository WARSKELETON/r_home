import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/sign_in/sign_in_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class RolePage extends StatelessWidget {
  const RolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => SignInBloc(FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                failure.map(
                  cancelledByUser: (_) => {},
                  serverError: (_) => {}, 
                  userNotRegistered: (_) => {}, 
                  userAlreadyRegistered: (_) {
                    AutoRouter.of(context).popUntilRouteWithName("SignInPageRoute");
                    AutoRouter.of(context).replace(const HomePageRoute());
                    context.read<AuthBloc>().add(const AuthEvent.authRequest());
                  }
                );
                print("Failure in Register");
              },
              (_) {
                AutoRouter.of(context).popUntilRouteWithName("SignInPageRoute");
                AutoRouter.of(context).replace(const HomePageRoute());
                context.read<AuthBloc>().add(const AuthEvent.authRequest());
              },
            ),
          );
        },
        builder: (context, state) { 
          return Scaffold(
          appBar: const AppBarWidget(title: "R-HOME"),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text(
                    "Choose your user experience.",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<SignInBloc>()
                        .add(const SignInEvent.registerWithRole("guest"));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromWidth(200.0))),
                  child: const Text(
                    'GUEST',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<SignInBloc>()
                        .add(const SignInEvent.registerWithRole("host"));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromWidth(200.0))),
                  child: const Text(
                    'HOST',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<SignInBloc>()
                        .add(const SignInEvent.registerWithRole("producer"));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromWidth(200.0))),
                  child: const Text(
                    'ACTIVITY PRODUCER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );}
      ),
    );
  }
}
