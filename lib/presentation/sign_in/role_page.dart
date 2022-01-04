import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/sign_in/sign_in_bloc.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';

class RolePage extends StatelessWidget {
  const RolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<SignInBloc>()
                    .add(const SignInEvent.signInWithGooglePressed());
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                fixedSize: MaterialStateProperty.all<Size>(const Size.fromWidth(200.0))
              ),
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
                    .add(const SignInEvent.signInWithGooglePressed());
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                fixedSize: MaterialStateProperty.all<Size>(const Size.fromWidth(200.0))
              ),
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
                    .add(const SignInEvent.signInWithGooglePressed());
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                fixedSize: MaterialStateProperty.all<Size>(const Size.fromWidth(200.0))
              ),
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
    );
  }
}