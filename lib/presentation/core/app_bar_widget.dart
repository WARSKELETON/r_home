import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? centerLeft;

  const AppBarWidget({Key? key, required this.title, this.actions, this.leading, this.centerLeft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title,
        overflow: TextOverflow.fade,
        softWrap: false,
      ),
      leading: leading,
      foregroundColor: Colors.grey[600],
      centerTitle: centerLeft == null ? true : false,
      backgroundColor: Colors.grey[50],
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
