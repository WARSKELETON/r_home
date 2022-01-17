import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/domain/rentals/rental.dart';
import 'package:r_home/presentation/core/rounded_card_widget.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class HomeWidget extends StatelessWidget {
  final Home home;
  final Rental rental;
  final bool booked;

  const HomeWidget({Key? key, required this.home, required this.rental, required this.booked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: RoundedCardWidget(
        title: home.name,
        subtitle: home.host,
        image: home.mainImageUrl,
        network: true,
        width: MediaQuery.of(context).size.width,
        height: 200,
        booked: booked,
        onPressed: () => AutoRouter.of(context).push(HomeDetailsPageRoute(homeUuid: home.uuid, rentalUuid: rental.homeId == "" ? "" : rental.uuid)),
      ),
    );
  }
}