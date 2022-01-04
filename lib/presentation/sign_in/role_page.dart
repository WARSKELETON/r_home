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
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
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
                    context.read<AuthBloc>().add(const AuthEvent.getDomainUser());
                  }
                );
                print("Failure in Register");
              },
              (_) {
                AutoRouter.of(context).popUntilRouteWithName("SignInPageRoute");
                AutoRouter.of(context).replace(const HomePageRoute());
                context.read<AuthBloc>().add(const AuthEvent.authRequest());
                context.read<AuthBloc>().add(const AuthEvent.getDomainUser());
              },
            ),
          );
        },
        builder: (context, state) { 
          return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primaryBlue,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, right: 100.0, top: 100.0, bottom: 50.0),
                    child: SvgPicture.asset('assets/icons/splash-logo.svg', width: 250),
                  ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: Text(
                    "Choose your user experience.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: RoundedButtonWidget(
                    text: 'GUEST', 
                    onPressed: () {
                      context
                          .read<SignInBloc>()
                          .add(const SignInEvent.registerWithRole("guest"));
                    }, 
                    backgroundColor: Colors.grey[300]!, 
                    fontWeight: FontWeight.w500, 
                    textColor: Colors.black,
                    fontSize: 20,
                    height: 50,
                    width: 310,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: RoundedButtonWidget(
                    text: 'HOST', 
                    onPressed: () {
                      context
                          .read<SignInBloc>()
                          .add(const SignInEvent.registerWithRole("host"));
                    }, 
                    backgroundColor: Colors.grey[300]!, 
                    fontWeight: FontWeight.w500, 
                    textColor: Colors.black,
                    fontSize: 20,
                    height: 50,
                    width: 310,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: RoundedButtonWidget(
                    text: 'ACTIVITY PRODUCER', 
                    onPressed: () {
                      context
                          .read<SignInBloc>()
                          .add(const SignInEvent.registerWithRole("producer"));
                    }, 
                    backgroundColor: Colors.grey[300]!, 
                    fontWeight: FontWeight.w500, 
                    textColor: Colors.black,
                    fontSize: 20,
                    height: 50,
                    width: 310,
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
