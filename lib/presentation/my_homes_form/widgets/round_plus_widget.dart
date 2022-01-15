import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class RoundPlusWidget extends StatelessWidget {
  final Icon icon;
  final double width;
  final double height;

  const RoundPlusWidget({Key? key, required this.icon, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryBlue,
        shape: BoxShape.circle,
      ),
      child: icon,
    );
  }
}
