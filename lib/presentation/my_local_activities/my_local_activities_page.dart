import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_local_activities/my_local_activities_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/local_activities/local_activities_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class MyLocalActivitiesPage extends StatelessWidget {
  const MyLocalActivitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "My Activities",
        actions: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(const NewLocalAcitvityPageRoute()), 
            icon: const Icon(Icons.add),
            splashRadius: 20,
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => MyLocalActivitiesBloc(LocalActivitiesRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))
        ..add(const MyLocalActivitiesEvent.initialize()),
        child: BlocBuilder<MyLocalActivitiesBloc, MyLocalActivitiesState>(
          builder: (context, state) {
            final _localActivities = context.watch<MyLocalActivitiesBloc>().state.localActivities;

            return Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: GridView.count(
                childAspectRatio: MediaQuery.of(context).size.width * 1.5 / (MediaQuery.of(context).size.height),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                children: List.generate(_localActivities.length, (index) => 
                  RoundedCardWidget(
                    title: _localActivities[index].name,
                    subtitle: _localActivities[index].location,
                    image: "assets/icons/food${index % 2}.png",
                    width: 160,
                    height: 160,
                    onPressed: () => AutoRouter.of(context).push(MyLocalActivityDetailsPageRoute(localActivityUuid: _localActivities[index].uuid)),
                  )),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
