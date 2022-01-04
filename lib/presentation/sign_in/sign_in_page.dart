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

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Sign-In"),
      body: BlocProvider<SignInBloc>(
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
                    userNotRegistered: (_) => AutoRouter.of(context).push(const RolePageRoute()),
                    userAlreadyRegistered: (_) => {}
                  );
                  print("Failure in Sign In");
                },
                (_) {
                  AutoRouter.of(context).replace(const HomePageRoute());
                  context.read<AuthBloc>().add(const AuthEvent.authRequest());
                },
              ),
            );
          },
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.all(8),
              children: [
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<SignInBloc>()
                        .add(const SignInEvent.signInWithGooglePressed());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                  ),
                  child: const Text(
                    'SIGN IN WITH GOOGLE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(height: 8),
                  const LinearProgressIndicator(value: null),
                ]
              ],
            );
          },
        )
      ),
    );
  }
}