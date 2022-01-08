import 'package:flutter/material.dart';
import 'package:r_home/domain/homes/home.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/rounded_button_widget.dart';

class ConsentMessageWidget extends StatelessWidget {
  const ConsentMessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, top: 50.0, right: 50.0),
      child: Center(
        child: Column(
          children: const [
            Text(
              "Take in mind that by opening these type of disputes you will allow other users to solve it through a voting system in a 48h window.\n By proceeding you declare to accept the terms and conditions of our dispute resolution method.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16
              ),
            ),
          ],
        ),
      ),
    );
  }
}
