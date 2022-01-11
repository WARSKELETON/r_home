import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/my_stays/my_stays_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/home_details_image_widget.dart';
import 'package:r_home/presentation/core/home_details_text_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/r_home_icon_icons.dart';

class MyStayDetailsPage extends StatelessWidget {
  final String homeUuid;
  final String rentalUuid;

  const MyStayDetailsPage({Key? key, required this.homeUuid, required this.rentalUuid}) : super(key: key);

  int nightsBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  double totalPrice(int nights, double pricePerNight, int singleFee) {
    return (nights * pricePerNight) + singleFee;
  }

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

  Widget _buildHostRow(BuildContext context, IconData icon, String text) {
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
      create: (context) => MyStaysBloc(RentalsRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)), HomesRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))
        ..add(MyStaysEvent.watchHome(homeUuid))
        ..add(MyStaysEvent.watchRental(rentalUuid)),
      child: BlocBuilder<MyStaysBloc, MyStaysState>(
        builder: (context, state) {
          final _home = context.watch<MyStaysBloc>().state.home;
          final _rental = context.watch<MyStaysBloc>().state.rental;
          final nights = nightsBetween(_rental.checkIn, _rental.checkOut);

          return Scaffold(
            appBar: AppBarWidget(
              title: _home.name
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
                        const HomeDetailsImageWidget(),
                        HomeDetailsTextWidget(home: _home),
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
                                  padding: EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "Rental Info:",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10.0, bottom: 15.0, top: 10.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50.0),
                                          child: Image.network(
                                            "https://static.wixstatic.com/media/6f3bc4_013c4e7818c345f2b68ae5ab521e8ff0~mv2.jpg/v1/fill/w_220,h_220,al_c,q_80,usm_0.66_1.00_0.01/smiley_edited_edited_edited.webp",
                                            width: 80,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          _buildHostRow(context, RHomeIcon.profile, "@amalia999"),
                                          _buildHostRow(context, Icons.phone, "918 678 009"),
                                        ]
                                      )
                                    ]),
                                _buildRow(
                                    context, "Date: ", "12/01/2022  -  17/01/2022"),
                                _buildRow(context, "Price per Night:", _home.price),
                                const Divider(
                                  thickness: 3,
                                  height: 10,
                                  color: Color(0xFFE5E5E5),
                                ),
                                _buildRow(context, "Total Tokens: ", totalPrice(nights, _home.price, 3)),
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
