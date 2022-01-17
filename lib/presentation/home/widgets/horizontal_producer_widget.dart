import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_local_activities/my_local_activities_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_repository.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HorizontalProducerWidget extends StatelessWidget {
  const HorizontalProducerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyLocalActivitiesBloc(LocalActivitiesRepository(
          FirebaseFirestore.instance,
          FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(),
              FirebaseFirestore.instance), FirebaseStorage.instance))
        ..add(const MyLocalActivitiesEvent.initialize()),
      child: Expanded(child: BlocBuilder<MyLocalActivitiesBloc, MyLocalActivitiesState>(
        builder: (context, state) {
          final _localActivities = context.watch<MyLocalActivitiesBloc>().state.localActivities;

          if (_localActivities.isNotEmpty) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _localActivities.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                  child: RoundedCardWidget(
                    title: _localActivities[index].name,
                    subtitle: _localActivities[index].location,
                    image: "assets/icons/home${1}.png",
                    width: 155,
                    height: 155,
                    onPressed: () => AutoRouter.of(context).push(
                        MyLocalActivityDetailsPageRoute(localActivityUuid: _localActivities[index].uuid)),
                  ),
                );
              });
          } else {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                  child: RoundedCardWidget(
                    title: "No Activities found",
                    center: false,
                    image: "assets/icons/home${1}.png",
                    width: 155,
                    height: 155,
                    onPressed: () => {},
                  ),
                );
              });
          }
        },
      )),
    );
  }
}
