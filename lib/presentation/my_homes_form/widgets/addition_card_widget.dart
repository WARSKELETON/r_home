import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/my_homes_form/widgets/round_plus_widget.dart';

class AdditionCardWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  final double width;
  final double height;
  final void Function()? onPressed;

  const AdditionCardWidget({Key? key,
  required this.title, required this.icon, required this.width, required this.height, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: width,
        height: height,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFEAEAEA),
          child: InkWell(
            splashColor: const Color.fromRGBO(128,128,128, 0.3),
            onTap: onPressed,
            borderRadius: BorderRadius.circular(15.0),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const RoundPlusWidget(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        width: 40,
                        height: 40
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primaryBlue
                        ),
                      )
                    ]
                  ),
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
