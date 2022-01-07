import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const AppBarWidget({Key? key, required this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title),
      foregroundColor: Colors.grey[600],
      centerTitle: true,
      backgroundColor: Colors.grey[50],
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
