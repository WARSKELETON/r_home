import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class AppBarButtonSelectedWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;
  final Function() onPressed;

  const AppBarButtonSelectedWidget({Key? key, required this.icon, required this.title, required this.selected, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 500),
      height: selected ? 75 : 60,
      transform: Matrix4.translation(vector.Vector3(0, selected ? -10 : 0, 0)),
      child: Material(
        elevation: selected ? 0 : 0,
        type: MaterialType.circle,
        color: selected ? Theme.of(context).colorScheme.primaryBlue : Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: selected ? Border.all(
              width: 3,
              color: selected ? Colors.white : Theme.of(context).colorScheme.primaryBlue,
            ) : null
          ),
          child: InkWell(
            onTap: onPressed,
            customBorder: const CircleBorder(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: selected ? Colors.white : Theme.of(context).colorScheme.primaryBlue,
                  size: 28,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: selected ? Colors.white : Theme.of(context).colorScheme.primaryBlue,
                    fontSize: 12
                  ),
                )
              ],
            ),
            splashColor: Colors.white.withOpacity(0.1),
          ),
        ),
      ),
    );
  }

}
