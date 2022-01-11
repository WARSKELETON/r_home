import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class DisputeTypeWidget extends StatelessWidget {
  final double elevation;
  final String title;
  final double height;
  final double svgSize;
  final double fontSize;
  final EdgeInsets paddingText;
  final String svgPath;
  final void Function()? onPressed;

  const DisputeTypeWidget({Key? key, required this.elevation, required this.title, required this.height, required this.svgSize, required this.fontSize, required this.paddingText, required this.svgPath, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: InkWell(
        splashColor: Color.fromRGBO(Theme.of(context).colorScheme.primaryBlue.red,Theme.of(context).colorScheme.primaryBlue.green,Theme.of(context).colorScheme.primaryBlue.blue, 0.1),
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Theme.of(context).colorScheme.primaryBlue,
            ),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  svgPath,
                  color: Theme.of(context).colorScheme.primaryBlue,
                  width: svgSize,
                ),
                Flexible(
                  child: Padding(
                    padding: paddingText,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primaryBlue,
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
