import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: SvgPicture.asset('assets/icons/app-title.svg', width: 150),
      foregroundColor: Colors.grey[600],
      centerTitle: true,
      backgroundColor: Colors.grey[50]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
