import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:r_home/application/auth/auth_bloc.dart';
import 'package:r_home/application/homes/homes_bloc.dart';
import 'package:r_home/infrastructure/auth/firebase_auth_facade.dart';
import 'package:r_home/infrastructure/homes/homes_repository.dart';
import 'package:r_home/infrastructure/rentals/rentals_repository.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/home_details_text_widget.dart';
import 'package:r_home/presentation/core/image_and_details_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';
import 'package:r_home/presentation/core/square_icon_button_widget.dart';
import 'package:r_home/presentation/core/string_extension.dart';
import 'package:r_home/presentation/routes/router.gr.dart';
import 'package:r_home/r_home_icon_icons.dart';

class HomeDetailsPage extends StatelessWidget {
  final String homeUuid;
  final String rentalUuid;

  const HomeDetailsPage({Key? key, required this.homeUuid, required this.rentalUuid}) : super(key: key);

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
          Text(right.toString()),
        ],
      ),
    );
  }

  Widget _buildMoneyRow(BuildContext context, String left, var right, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(right.toString()),
              ),
              Icon(
                icon,
                color: Theme.of(context).colorScheme.primaryBlue,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserRow(BuildContext context, IconData icon, String text) {
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
      create: (context) => HomesBloc(RentalsRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)), HomesRepository(FirebaseFirestore.instance, FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn(), FirebaseFirestore.instance)))
        ..add(HomesEvent.watchHome(homeUuid))
        ..add(HomesEvent.watchRental(rentalUuid)),
      child: BlocBuilder<HomesBloc, HomesState>(
        builder: (context, state) {
          final _home = context.watch<HomesBloc>().state.home;
          final _rental = context.watch<HomesBloc>().state.rental;
          final _host = context.watch<HomesBloc>().state.host;
          final _guest = context.watch<HomesBloc>().state.guest;
          final _currentUser = context.watch<AuthBloc>().state.user;
          final _userToDisplay = _currentUser.role == "host" ? _guest : _host;

          return Scaffold(
            appBar: AppBarWidget(
              title: _home.name,
              actions: [
                if (_currentUser.role == "host" && _currentUser.id == _home.host) ...[
                  IconButton(
                    onPressed: () =>
                        AutoRouter.of(context).push(MyHomesFormRoute(editedHome: _home)),
                    icon: const Icon(Icons.edit),
                    splashRadius: 20,
                  )
                ]
              ],
            ),
            body: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const ImageAndDetailsWidget(image: AssetImage("assets/icons/home3.png")),
                      HomeDetailsTextWidget(home: _home),
                      if (_rental.homeId != "") ...[
                        const Divider(
                          thickness: 8,
                          height: 40,
                          color: Color(0xFFE5E5E5),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0, right: 15.0, left: 15.0),
                                child: Text(
                                  "${_userToDisplay.role.capitalize()} Info",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 16,
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
                                          child: _userToDisplay.photo == null ?
                                            Container(decoration: const BoxDecoration(shape: BoxShape.rectangle), width: 80, height: 80) 
                                            : 
                                            Image.network(
                                              _userToDisplay.photo!,
                                              width: 80,
                                            ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          _buildUserRow(context, RHomeIcon.profile, _userToDisplay.getUsername()),
                                          _buildUserRow(context, Icons.phone, "918 678 009"),
                                        ]
                                      ),
                                      const Spacer(),
                                      SquareIconButtonWidget(
                                        text: "Reward\n${_userToDisplay.role.capitalize()}",
                                        onPressed: () => AutoRouter.of(context).push(RewardUserPageRoute(user: _userToDisplay, routeNameToPopUntil: HomeDetailsPageRoute.name)),
                                        size: 15,
                                        backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                                        icon: const Icon(
                                          RHomeIcon.reward, 
                                          color: Colors.white,
                                          size: 33,
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
                                  context, "Date: ", _rental.getDateString()),
                              _buildMoneyRow(context, "Price per Night:", _home.price, _rental.getPaymentMethodIcon()),
                              const Divider(
                                thickness: 3,
                                height: 10,
                                color: Color(0xFFE5E5E5),
                              ),
                              _buildMoneyRow(context, "Total Tokens: ", _rental.totalPrice(_home.price), _rental.getPaymentMethodIcon()),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: RoundedButtonWidget(
                            text: 'Open Dispute',
                            onPressed: () => AutoRouter.of(context).push(StartDisputesPageRoute(rentalUuid: _rental.uuid, homeUuid: _rental.homeId)),
                            backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                            fontWeight: FontWeight.w400,
                            textColor: Colors.white,
                            fontSize: 20,
                            height: 40,
                            width: 200,
                          ),
                        ),
                      ]
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
