import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/sign_in/sign_in_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryBlue,
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
                  context.read<AuthBloc>().add(const AuthEvent.getDomainUser());
                },
              ),
            );
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(100.0),
                    child: SvgPicture.asset('assets/icons/splash-logo.svg', width: 250),
                  ),
                  RoundedButtonWidget(
                    text: 'Sign in with Google', 
                    onPressed: () {
                      context
                          .read<SignInBloc>()
                          .add(const SignInEvent.signInWithGooglePressed());
                    }, 
                    backgroundColor: Colors.grey.shade300, 
                    fontWeight: FontWeight.w500, 
                    textColor: Colors.black,
                    fontSize: 20,
                    height: 50,
                    width: 310,
                    leadingIcon: SvgPicture.asset('assets/icons/google.svg', width: 25),
                  ),
                ],
              ),
            );
          },
        )
      ),
    );
  }
}