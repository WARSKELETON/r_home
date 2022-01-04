import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;

  const RoundedButtonWidget({Key? key, required this.text, required this.onPressed, required this.backgroundColor, required this.textColor, required this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: backgroundColor)
          )
        )
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
