import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class DipsutesPageWidget extends StatelessWidget {
  final String title;
  final String imageAsset;

  const DipsutesPageWidget({Key? key, required this.title, required this.imageAsset}) : super(key: key);

  Widget _buidButton(BuildContext context, String buttonText, Function() onPressed) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: Theme.of(context).colorScheme.primaryBlue,
                width: 2
              )
            ),
          ),
          overlayColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.pressed)
                  ? Theme.of(context).colorScheme.primaryBlue.withOpacity(0.2)
                  : null;
          }),
          fixedSize: MaterialStateProperty.all<Size>(const Size(280, 50))
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primaryBlue,
            fontWeight: FontWeight.w600,
            fontSize: 18
          ),
        ),
        onPressed: onPressed
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 1.0,
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            final currentUser = context.watch<AuthBloc>().state.user;

            return Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 840 / MediaQuery.of(context).size.height * 0.85,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: AspectRatio(
                              aspectRatio: 840 / MediaQuery.of(context).size.height * 0.85,
                              child: Image.asset(
                                imageAsset,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 350.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.transparent,
                                ],
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, top: 15, right: 16, bottom: 12),
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                    if (currentUser.role == "host" || currentUser.role == "guest") ...[
                      Container(
                        transform: Matrix4.translation(vector.Vector3(0, -25, 0)),
                        child: _buidButton(context, 'START A DISPUTE', () => AutoRouter.of(context).push(StartDisputesPageRoute()))
                      ),
                      const SizedBox(
                        height: 10
                      ),
                      Container(
                        transform: Matrix4.translation(vector.Vector3(0, -25, 0)),
                        child: _buidButton(context, 'SEE MY DISPUTES', () => AutoRouter.of(context).push(DisputesListPageRoute(privateMode: true)))
                      ),
                      const SizedBox(
                        height: 10
                      ),
                    ],
                    Container(
                      transform: Matrix4.translation(vector.Vector3(0, -25, 0)),
                      child: _buidButton(context, 'PARTICIPATE IN DISPUTE', () => AutoRouter.of(context).push(DisputesListPageRoute(privateMode: false)))
                    ),
                  ],
                );
          },
        ),
      ),
    );
  }
}
