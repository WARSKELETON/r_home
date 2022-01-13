import 'package:flutter/material.dart';

class ChartLegendWidget extends StatelessWidget {
  final List<Color> colors;
  const ChartLegendWidget({Key? key, required this.colors}) : super(key: key);

  Widget _buildLegendItem(String text, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, right: 7),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color
            ),
          ),
        ),
        Text(text),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLegendItem("Irrelevant", colors[0]),
        _buildLegendItem("Against", colors[1]),
        _buildLegendItem("In Favour", colors[2]),
      ],
    );
  }
}
