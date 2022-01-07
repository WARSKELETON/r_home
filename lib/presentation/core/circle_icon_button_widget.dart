import 'package:flutter/material.dart';

class CircleIconButtonWidget extends StatelessWidget {
  final Icon icon;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color splashColor;
  final bool? disabled;

  const CircleIconButtonWidget({Key? key, required this.onPressed, required this.backgroundColor, this.disabled, required this.icon, required this.splashColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled == null ? onPressed : (disabled! ? null : onPressed),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: disabled == null ? backgroundColor : (disabled! ? Color.fromRGBO(backgroundColor.red, backgroundColor.green, backgroundColor.blue, 0.4) : backgroundColor),
        onPrimary: splashColor,
      ),
      child: icon,
    );
  }
}
