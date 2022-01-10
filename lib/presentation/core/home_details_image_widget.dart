import 'package:flutter/material.dart';

class HomeDetailsImageWidget extends StatelessWidget {
  const HomeDetailsImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: Ink.image(
        image: const AssetImage("assets/icons/home3.png"),
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: 230,
      ),
    );
  }
}
