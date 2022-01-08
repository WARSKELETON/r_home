import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_homes/my_homes_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class MyHomeDetailsPage extends StatelessWidget {
  final String homeUuid;

  const MyHomeDetailsPage({Key? key, required this.homeUuid}) : super(key: key);

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
      create: (context) => MyHomesBloc(RentalsRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))..add(MyHomesEvent.watchHome(homeUuid)),
      child: Builder(
        builder: (context) {
          final _home = context.watch<MyHomesBloc>().state.home;

          return Scaffold(
            appBar: AppBarWidget(
              title: _home.name,
              actions: [
                IconButton(
                  onPressed: () =>
                      AutoRouter.of(context).push(MyHomesFormRoute(editedHome: _home)),
                  icon: const Icon(Icons.edit),
                  splashRadius: 20,
                )
              ],
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
                                  bottomRight: Radius.circular(15))),
                          clipBehavior: Clip.hardEdge,
                          color: Colors.transparent,
                          child: Ink.image(
                            image: const AssetImage("assets/icons/home3.png"),
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
                                _buildRow(context, "Location:", _home.location),
                                _buildRow(context, "Max Number of Adults:",
                                    _home.maxAdults),
                                _buildRow(context, "Max Number of Childs:",
                                    _home.maxChildren),
                                _buildRow(
                                    context, "Max Number of Pets:", _home.maxPets),
                                _buildRow(context, "Price:", _home.price),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 8,
                          height: 40,
                          color: Color(0xFFE5E5E5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  child: Text(
                                    "Currently Renting To:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10.0, bottom: 15.0, top: 10.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50.0),
                                          child: Image.network(
                                            "https://lh3.googleusercontent.com/a/AATXAJx1R3Mz9BM_w6j4Oo9ugq8B-7yePvc3TsByifi3=s96-c",
                                            width: 30,
                                          ),
                                        ),
                                      ),
                                      _buildRow(context, "Guest: ", "@freddie"),
                                    ]),
                                _buildRow(
                                    context, "Date: ", "12/01/2022  -  17/01/2022"),
                                _buildRow(context, "Price:", "5 nights x 22.0"),
                                const Divider(
                                  thickness: 3,
                                  height: 10,
                                  color: Color(0xFFE5E5E5),
                                ),
                                _buildRow(context, "Total Tokens: ", "110.0"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            bottomNavigationBar: const BottomBarWidget(),
          );
        }
      ),
    );
  }
}
