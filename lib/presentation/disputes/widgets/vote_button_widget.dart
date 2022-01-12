import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class VoteButtonWidget extends StatelessWidget {
  final Icon icon;
  final void Function()? onPressed;
  final bool active;

  const VoteButtonWidget({Key? key, required this.onPressed, required this.active, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: active ? Theme.of(context).colorScheme.primaryBlue : Theme.of(context).colorScheme.primaryBlue.withOpacity(0.5),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1, color: Colors.white)
      ),
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          splashColor: const Color.fromRGBO(128,128,128, 0.3),
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: icon,
        ),
      )
    );
  }
}
