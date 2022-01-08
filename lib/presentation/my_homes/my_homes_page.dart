import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_homes/my_homes_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/my_home_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class MyHomesPage extends StatelessWidget {
  const MyHomesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "My Homes",
        actions: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(MyHomesFormRoute()), 
            icon: const Icon(Icons.add),
            splashRadius: 20,
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => MyHomesBloc(RentalsRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)), HomesRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))
          ..add(const MyHomesEvent.initialize()),
        child: BlocBuilder<MyHomesBloc, MyHomesState>(
          builder: (context, state) {
            final _homes = context.watch<MyHomesBloc>().state.homes;

            return Center(
              child: ListView.separated(
                padding: const EdgeInsets.all(10),
                itemCount: _homes.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return MyHomeWidget(home: _homes[index]);
                },
                separatorBuilder: (BuildContext context, int index) => const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 10,
                  ),
                ),
              )
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
