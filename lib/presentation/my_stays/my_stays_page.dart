import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_stays/my_stays_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/my_homes/widgets/my_home_widget.dart';
import 'package:r_home/presentation/my_stays/widgets/my_stay_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class MyStaysPage extends StatelessWidget {
  const MyStaysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "My Stays",
        actions: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(const RentAHomePageRoute()), 
            icon: const Icon(Icons.add),
            splashRadius: 20,
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => MyStaysBloc(RentalsRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)), HomesRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))
          ..add(const MyStaysEvent.initialize()),
        child: BlocBuilder<MyStaysBloc, MyStaysState>(
          builder: (context, state) {
            final _rentals = context.watch<MyStaysBloc>().state.rentals;
            final _homes = context.watch<MyStaysBloc>().state.homes;

            if (_homes.isNotEmpty) {
              return Center(
                child: ListView.separated(
                  padding: const EdgeInsets.all(10),
                  itemCount: _rentals.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    final _home = _homes.firstWhere((home) => home.uuid == _rentals[index].homeId);
                    return MyStayWidget(rental: _rentals[index], home: _home);
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
            } else if (_homes.isEmpty && _rentals.isNotEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text("No Stays were found."),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
