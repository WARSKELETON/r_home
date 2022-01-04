import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authenticated) {
          AutoRouter.of(context).replace(const HomePageRoute());
          context.read<AuthBloc>().add(const AuthEvent.authRequest());
          context.read<AuthBloc>().add(const AuthEvent.getDomainUser());
        } else {
          AutoRouter.of(context).replace(const SignInPageRoute());
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}