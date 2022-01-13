import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/stepper/stepper_bloc.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class StepperWidget extends StatelessWidget {
  final String title;
  final AlignmentGeometry titleAlignment;
  final TextAlign titleTextAlignment;
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
    required this.title, 
    required this.titleAlignment, 
    required this.titleTextAlignment
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
          border: Border.all(color: selectedIndex >= 1 ? Colors.transparent : Theme.of(context).colorScheme.primaryBlue, width: 2),
          color: selectedIndex >= 1 ? Theme.of(context).colorScheme.primaryBlue : Colors.white,
        ),
        child: Center(
          child: Text(
            "1",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: selectedIndex >= 1 ? Colors.white : Theme.of(context).colorScheme.primaryBlue
            ),
          )
        ),
      )
    ];

    for (var i = 2; i < numberOfSteps + 1; i++) {
      finalList = [
        ...finalList,
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeIn,
          height: selectedIndex >= i ? 3 : 1,
          width: separatorWidth,
          color: Theme.of(context).colorScheme.primaryBlue,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
          width: stepWidth,
          height: stepWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: selectedIndex >= i ? Colors.transparent : Theme.of(context).colorScheme.primaryBlue, width: 2),
            color: selectedIndex >= i ? Theme.of(context).colorScheme.primaryBlue : Colors.white,
          ),
          child: Center(
            child: Text(
              i.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: selectedIndex >= i ? Colors.white : Theme.of(context).colorScheme.primaryBlue
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
              alignment: titleAlignment,
              child: Text(
                title,
                textAlign: titleTextAlignment,
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
