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
  final bool? disabled;

  const RoundedButtonWidget({Key? key, required this.text, required this.onPressed, required this.backgroundColor, required this.textColor, required this.fontWeight, required this.fontSize, required this.width, required this.height, this.leadingIcon, this.trailingIcon, this.disabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled == null ? onPressed : (disabled! ? null : onPressed),
      style: ButtonStyle(
        backgroundColor: disabled == null ? MaterialStateProperty.all<Color>(backgroundColor) : (disabled! ? MaterialStateProperty.all<Color>(Color.fromRGBO(backgroundColor.red, backgroundColor.green, backgroundColor.blue, 0.4)) : MaterialStateProperty.all<Color>(backgroundColor)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: disabled == null ? backgroundColor : (disabled! ? Color.fromRGBO(backgroundColor.red, backgroundColor.green, backgroundColor.blue, 0) : backgroundColor))
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
