import 'package:flutter/material.dart';

class ChartLegendWidget extends StatelessWidget {
  final Map<Color, String> data;
  const ChartLegendWidget({Key? key, required this.data}) : super(key: key);

  Widget _buildLegendItem(String text, Color color) {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    data.forEach((color, label) => list.add(_buildLegendItem(label, color)));

    return Container(
      color: Colors.red,
      child: Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        alignment: WrapAlignment.center,
        children: list,
      ),
    );
  }
}
