import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_homes/my_homes_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/circle_icon_button_widget.dart';
import 'package:r_home/presentation/core/image_and_details_widget.dart';
import 'package:r_home/presentation/core/home_details_text_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';

class MyHomeDetailsPage extends StatelessWidget {
  final String homeUuid;

  const MyHomeDetailsPage({Key? key, required this.homeUuid}) : super(key: key);

  Widget _buildRow(BuildContext context, String left, var right) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          if (left.toString() == "Price per Night:") ...[
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

  Widget _buildGuestRow(BuildContext context, IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Icon(icon, size: 16,),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyHomesBloc(RentalsRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)), HomesRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))
        ..add(MyHomesEvent.watchHome(homeUuid)),
      child: BlocBuilder<MyHomesBloc, MyHomesState>(
        builder: (context, state) {
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
            body: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const ImageAndDetailsWidget(image: AssetImage("assets/icons/home3.png")),
                      HomeDetailsTextWidget(home: _home),
                      const Divider(
                        thickness: 8,
                        height: 40,
                        color: Color(0xFFE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20.0, right: 15.0, left: 15.0),
                                child: Text(
                                  "Guest Info",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10.0, bottom: 15.0, top: 10.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50.0),
                                          child: Image.network(
                                            "https://static.wixstatic.com/media/6f3bc4_c69a145099ba4376b3d429fcc61a8c1d~mv2.jpg/v1/crop/x_23,y_0,w_465,h_465/fill/w_220,h_220,al_c,q_80,usm_0.66_1.00_0.01/AndreAugusto.webp",
                                            width: 80,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          _buildGuestRow(context, RHomeIcon.profile, "@freddie"),
                                          _buildGuestRow(context, Icons.phone, "918 678 009"),
                                        ]
                                      ),
                                      const Spacer(),
                                      CircleIconButtonWidget(
                                        onPressed: () => {},
                                        size: 15,
                                        backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                                        icon: const Icon(
                                          RHomeIcon.reward, 
                                          color: Colors.white,
                                          size: 38,
                                        ),
                                        splashColor: Colors.black
                                      )
                                    ]),
                              ),
                              const Divider(
                                thickness: 8,
                                height: 40,
                                color: Color(0xFFE5E5E5),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 5.0, right: 15.0, left: 15.0),
                                child: Text(
                                  "Rental Info",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              _buildRow(
                                  context, "Date: ", "12/01/2022  -  17/01/2022"),
                              _buildRow(context, "Price per Night:", _home.price),
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
            bottomNavigationBar: const BottomBarWidget(),
          );
        }
      ),
    );
  }
}
