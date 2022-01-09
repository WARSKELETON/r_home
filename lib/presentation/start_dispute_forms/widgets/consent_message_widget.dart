import 'package:flutter/material.dart';

class ConsentMessageWidget extends StatelessWidget {
  const ConsentMessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
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
      ),
    );
  }
}
