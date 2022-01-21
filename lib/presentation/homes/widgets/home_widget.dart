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

  Widget _buildDetailsRow(String leadingText, String text) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 4.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            leadingText,
            style: const TextStyle(
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            text
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RoundedCardWidget(
      title: home.name,
      titleFontSize: 16,
      center: false,
      details: [_buildDetailsRow("Location: ", home.location), _buildDetailsRow("Price: ", home.price.toString() + " tokens/night"), _buildDetailsRow("Local Activities: ", home.localActivities.length.toString() + " host recommendations")],
      image: home.mainImageUrl,
      network: true,
      width: MediaQuery.of(context).size.width,
      height: 200,
      booked: booked,
      onPressed: () => AutoRouter.of(context).push(HomeDetailsPageRoute(homeUuid: home.uuid, rentalUuid: rental.homeId == "" ? "" : rental.uuid)),
    );
  }
}