import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class ChipWidget extends StatelessWidget {
  final double width;
  final String title;
  final bool isChecked;
  final bool isClickable;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;

  const ChipWidget({Key? key,
    required this.width,
    required this.title,
    required this.isChecked,
    required this.isClickable,
    this.borderColor,
    this.backgroundColor,
    this.textColor,
    this. onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Container(
        height: 25,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(20.0),
          color: isClickable ? (isChecked ? Theme.of(context).colorScheme.primaryBlue : Color(0xFFE5E5E5)) : backgroundColor,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.2),
            onTap: isClickable ? onPressed : null,
            borderRadius: BorderRadius.circular(15.0),
            child: Row(
              mainAxisAlignment: isChecked ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (isChecked) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(
                      Icons.check,
                      size: 16,
                      color: isClickable ? (isChecked ? Colors.white : Theme.of(context).colorScheme.primaryBlue) : textColor,
                    ),
                  ),
                ],
                if (isChecked) ...[
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: isClickable ? (isChecked ? Colors.white : Theme.of(context).colorScheme.primaryBlue) : textColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ] else ...[
                  Text(
                    title,
                    style: TextStyle(
                      color: isClickable ? (isChecked ? Colors.white : Theme.of(context).colorScheme.primaryBlue).withOpacity(0.6) : textColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
