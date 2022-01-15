import 'package:flutter/material.dart';

class SquareIconButtonWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color splashColor;
  final bool? disabled;
  final double? size;

  const SquareIconButtonWidget({Key? key, required this.onPressed, required this.backgroundColor, this.disabled, required this.icon, required this.splashColor, this.size, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled == null ? onPressed : (disabled! ? null : onPressed),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.all(size == null ? 10 : size!),
        primary: disabled == null ? backgroundColor : (disabled! ? Color.fromRGBO(backgroundColor.red, backgroundColor.green, backgroundColor.blue, 0.4) : backgroundColor),
        onPrimary: splashColor,
      ),
      child: Column(
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              text, 
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ), 
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
