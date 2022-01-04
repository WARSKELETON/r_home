import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double width;
  final double height;
  final Icon? leadingIcon;
  final Icon? trailingIcon;

  const RoundedButtonWidget({Key? key, required this.text, required this.onPressed, required this.backgroundColor, required this.textColor, required this.fontWeight, required this.fontSize, required this.width, required this.height, this.leadingIcon, this.trailingIcon}) : super(key: key);

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
        ),
        fixedSize: MaterialStateProperty.all<Size>(Size(width, height))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leadingIcon != null) ...[
            leadingIcon!
          ],
          const Spacer(),
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
