import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class HomeDetailsTextWidget extends StatelessWidget {
  final Home home;

  const HomeDetailsTextWidget({Key? key, required this.home}) : super(key: key);

  Widget _buildRow(BuildContext context, String left, var right) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: const TextStyle(fontWeight: FontWeight.w600),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Column(
        children: [
          _buildRow(context, "Location:", home.location),
          _buildRow(context, "Max Number of Adults:",
              home.maxAdults),
          _buildRow(context, "Max Number of Children:",
              home.maxChildren),
          _buildRow(
              context, "Max Number of Pets:", home.maxPets),
          _buildRow(context, "Price:", home.price),
        ],
      ),
    );
  }
}
