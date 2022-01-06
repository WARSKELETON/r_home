import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class NumberTokensInfoWidget extends StatelessWidget {
  final String title;
  final int tokens;

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
                    tokens.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      ),
                  ),
                ),
                SvgPicture.asset('assets/icons/token.svg',
                  color: Colors.white,
                  width: 23,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
