import 'package:flutter/material.dart';

class RoundPlusWidget extends StatelessWidget {
  final Icon icon;
  final double width;
  final double height;
  final Color color;

  const RoundPlusWidget({Key? key, required this.icon, required this.width, required this.height, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: icon,
    );
  }
}
