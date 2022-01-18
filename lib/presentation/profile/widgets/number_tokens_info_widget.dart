import 'package:flutter/material.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class NumberTokensInfoWidget extends StatelessWidget {
  final String title;
  final double tokens;

  const NumberTokensInfoWidget({
    Key? key,
    required this.title,
    required this.tokens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
        decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryBlue,
        border: Border.all(
          color: Theme.of(context).colorScheme.primaryBlue,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My tokens",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    tokens.toStringAsFixed(2),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      ),
                  ),
                ),
                const Icon(RHomeIcon.token, color: Colors.white,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
