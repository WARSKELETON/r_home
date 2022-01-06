import 'package:flutter/material.dart';

class FlatRoundedButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double width;
  final double height;
  final Icon? trailingIcon;

  const FlatRoundedButtonWidget({Key? key, required this.text, required this.onPressed, required this.backgroundColor, required this.textColor, required this.fontWeight, required this.fontSize, required this.width, required this.height, this.trailingIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          )
        ),
        fixedSize: MaterialStateProperty.all<Size>(Size(width, height))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
          const Spacer(),
          if (trailingIcon != null) ...[
            trailingIcon!
          ],
        ],
      ),
    );
  }
}
