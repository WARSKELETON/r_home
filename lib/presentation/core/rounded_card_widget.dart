// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class RoundedCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final double width;
  final double height;
  final double opacity;

  const RoundedCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.width,
    required this.height,
    required this.opacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Material(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: Ink.image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              width: width,
              height: height,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(opacity), BlendMode.dstATop),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {},
              ),
            ),
          ),
          // When retrieving from the network use Image.network(...),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
