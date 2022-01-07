import 'package:flutter/material.dart';

class RoundedCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final double width;
  final double height;
  final void Function()? onPressed;

  const RoundedCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.width,
    required this.height,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color.fromRGBO(128,128,128, 0.3),
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: Ink.image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                ),
              ),
              // When retrieving from the network use Image.network(...),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
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
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
