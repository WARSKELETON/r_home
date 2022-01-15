import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/local_activities/local_activities_bloc.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class LocalActivityDetailsPage extends StatelessWidget {
  final String localActivityUuid;
  final MyHomesFormBloc myHomesFormBloc;

  const LocalActivityDetailsPage({Key? key, required this.localActivityUuid, required this.myHomesFormBloc}) : super(key: key);

  Widget _buildRow(BuildContext context, String left, var right) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          if (left.toString() == "Price:") ...[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(right.toString()),
                ),
                SvgPicture.asset(
                  'assets/icons/token.svg',
                  color: Theme.of(context).colorScheme.primaryBlue,
                  width: 23,
                )
              ],
            ),
          ] else ...[
            Text(right.toString()),
          ]
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalActivitiesBloc(
        LocalActivitiesRepository(
          FirebaseFirestore.instance,
          FirebaseAuthFacade(
            FirebaseAuth.instance,
            GoogleSignIn(),
            FirebaseFirestore.instance
          )
        )
      )..add(LocalActivitiesEvent.watchLocalActivity(localActivityUuid)),
      child: Builder(
        builder: (context) {
          final _localActivity = context.watch<LocalActivitiesBloc>().state.localActivity;

          return Scaffold(
            appBar: AppBarWidget(
              title: _localActivity.name,
            ),
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      children: <Widget>[
                        Material(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)
                            )
                          ),
                          clipBehavior: Clip.hardEdge,
                          color: Colors.transparent,
                          child: Ink.image(
                            image: const AssetImage("assets/icons/food0.png"),
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 230,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Column(
                              children: [
                                _buildRow(context, "Location:", _localActivity.location),
                                _buildRow(context, "Price:", _localActivity.price),
                                _buildRow(context, "Contact:", _localActivity.contact),
                              ],
                            ),
                          ),
                        ),
                        RoundedButtonWidget(
                          text: 'ASSOCIATE THIS ACTIVITY',
                          onPressed: () => {
                            myHomesFormBloc.add(MyHomesFormEvent.changeLocalActivity(_localActivity)),
                            AutoRouter.of(context).popUntilRouteWithName(MyHomesFormRoute.name)
                          },
                          backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                          fontWeight: FontWeight.w400,
                          textColor: Colors.white,
                          fontSize: 17,
                          height: 40,
                          width: 300,
                          trailingIcon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: myHomesFormBloc, 
      child: this
    );
  }
}
