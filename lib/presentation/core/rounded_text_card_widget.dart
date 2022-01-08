import 'package:flutter/material.dart';

class RoundedTextCardWidget extends StatelessWidget {
  final String text;
  final String image;
  final void Function()? onPressed;

  const RoundedTextCardWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: InkWell(
          onTap: onPressed,
          child: Stack(
            children: [
              Material(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: InkWell(
                  splashColor: const Color.fromRGBO(128,128,128, 0.3),
                  onTap: onPressed,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Ink.image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                  ),
                ),
              ),
              Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
