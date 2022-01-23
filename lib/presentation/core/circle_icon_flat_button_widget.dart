import 'package:flutter/material.dart';

class CircleIconFlatButtonWidget extends StatelessWidget {
  final Icon icon;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color splashColor;
  final bool? disabled;
  final double? size;

  const CircleIconFlatButtonWidget({Key? key, required this.onPressed, required this.backgroundColor, this.disabled, required this.icon, required this.splashColor, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disabled == null ? onPressed : (disabled! ? null : onPressed),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: EdgeInsets.all(size == null ? 10 : size!),
        primary: disabled == null ? backgroundColor : (disabled! ? Color.fromRGBO(backgroundColor.red, backgroundColor.green, backgroundColor.blue, 0.4) : backgroundColor),
        onPrimary: splashColor,
      ),
      child: icon,
    );
  }
}
