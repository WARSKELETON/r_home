import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class RoundedCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final double width;
  final double height;
  final void Function()? onPressed;
  final bool? selected;

  const RoundedCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.width,
    required this.height,
    required this.onPressed, this.selected,
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
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                      if (selected != null && selected!) ...[
                        Container(
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primaryBlue,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 1, color: Colors.white)),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 50,
                          )
                        ),
                      ],
                      Ink.image(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                        colorFilter: selected == null ? null : (selected! ? ColorFilter.mode(Theme.of(context).colorScheme.primaryBlue.withOpacity(0.5), BlendMode.darken) : null),
                        width: width,
                        height: height,
                    ),
                  ]
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
