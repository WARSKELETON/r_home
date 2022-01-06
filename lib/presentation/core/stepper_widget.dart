import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';

class StepperWidget extends StatelessWidget {
  final String title;
  final int numberOfSteps;
  final double totalWidth;
  final double stepWidth;
  final double separatorWidth;

  const StepperWidget({
    Key? key,
    required this.numberOfSteps,
    required this.totalWidth,
    required this.stepWidth,
    required this.separatorWidth,
    required this.title
  }) : super(key: key);

  List<Widget> _buildStepper(BuildContext context) {
    List<Widget> finalList = [];

    var selectedIndex = context.watch<StepperBloc>().state.selectedIndex + 1;

    finalList = [
      ...finalList,
      Container(
        width: stepWidth,
        height: stepWidth,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: selectedIndex >= 1 ? Colors.transparent : const Color.fromRGBO(28, 94, 139, 1), width: 2),
          color: selectedIndex >= 1 ? const Color.fromRGBO(28, 94, 139, 1) : Colors.white,
        ),
        child: Center(
          child: Text(
            "1",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: selectedIndex >= 1 ? Colors.white : const Color.fromRGBO(28, 94, 139, 1)
            ),
          )
        ),
      )
    ];

    for (var i = 2; i < numberOfSteps + 1; i++) {
      finalList = [
        ...finalList,
        Container(
          height: selectedIndex >= i ? 3 : 1,
          width: separatorWidth,
          color: const Color.fromRGBO(28, 94, 139, 1),
        ),
        Container(
          width: stepWidth,
          height: stepWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: selectedIndex >= i ? Colors.transparent : const Color.fromRGBO(28, 94, 139, 1), width: 2),
            color: selectedIndex >= i ? const Color.fromRGBO(28, 94, 139, 1) : Colors.white,
          ),
          child: Center(
            child: Text(
              i.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: selectedIndex >= i ? Colors.white : const Color.fromRGBO(28, 94, 139, 1)
              ),
            ),
          )
        )
      ];
    }
    return finalList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: totalWidth,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ..._buildStepper(context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
