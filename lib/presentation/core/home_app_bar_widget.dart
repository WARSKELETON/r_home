import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/string_extension.dart';

class HomeAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerLeft;
  final String? role;

  const HomeAppBarWidget({Key? key, required this.title, this.actions, this.leading, this.centerLeft, this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          Text(
            title,
            overflow: TextOverflow.fade,
            softWrap: false,
            style: const TextStyle(
              color: Colors.black
            ),
          ),
          if (centerLeft != null && role != null) ...[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 7),
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.6)
                ),
              ),
            ),
            Text(
              role!.capitalize(),
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.7)
              ),
            )
          ]
        ],
      ),
      leading: leading,
      foregroundColor: Colors.grey[600],
      centerTitle: centerLeft == null ? true : false,
      backgroundColor: Theme.of(context).colorScheme.secondaryBlue,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
