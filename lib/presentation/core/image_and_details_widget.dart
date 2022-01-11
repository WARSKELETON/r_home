import 'package:flutter/material.dart';

class ImageAndDetailsWidget extends StatelessWidget {
  final AssetImage image;

  const ImageAndDetailsWidget({Key? key, required this.image}) : super(key: key);

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
        image: image,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: 230,
      ),
    );
  }
}
