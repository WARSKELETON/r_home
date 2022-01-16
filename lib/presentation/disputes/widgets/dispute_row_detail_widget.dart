
import 'package:flutter/material.dart';

class DisputeRowDetailWidget extends StatelessWidget {
  final Icon icon;
  final String description;

  const DisputeRowDetailWidget({Key? key, required this.icon, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: icon
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}