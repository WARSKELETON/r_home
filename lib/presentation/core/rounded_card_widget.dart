import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/disputes/widgets/chip_widget.dart';

class RoundedCardWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String image;
  final bool? network;
  final double width;
  final double height;
  final void Function()? onPressed;
  final bool? selected;
  final bool? booked;
  final bool? center;

  const RoundedCardWidget({
    Key? key,
    required this.title,
    this.subtitle,
    required this.image,
    this.network,
    required this.width,
    required this.height,
    required this.onPressed, 
    this.selected, 
    this.booked, 
    this.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cutTitle =
      title.length > 22 ?
      (subtitle == null ?
        title.substring(0, 22) + "..." :
        title.substring(0, 17) + "...") :
      title;

    final cutSubtitle = subtitle != null ? (subtitle!.length > 18 ? subtitle!.substring(0, 17) + "..." : subtitle) : null;

    return InkWell(
      splashColor: const Color.fromRGBO(128,128,128, 0.3),
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15.0),
      child: Center(
        child: Column(
          crossAxisAlignment: subtitle == null ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              clipBehavior: Clip.hardEdge,
              color: Colors.transparent,
              child: Stack(
                alignment: selected != null && selected! ? Alignment.center : Alignment.topRight,
                children: [
                  if (selected != null && selected!) ...[
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryBlue,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.white)
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 50,
                      )
                    ),
                  ],
                  if (booked != null && booked!) ...[
                    ChipWidget(
                      width: 100, 
                      title: "BOOKED",
                      isChecked: false,
                      isClickable: false,
                      backgroundColor: Theme.of(context).colorScheme.primaryBlue.withOpacity(0.6),
                      textColor: Colors.white,
                    ),
                  ],
                  Ink.image(
                    image: network == null || !network! ? AssetImage(image) as ImageProvider<Object> : NetworkImage(image),
                    fit: BoxFit.cover,
                    colorFilter: selected == null ? null : (selected! ? ColorFilter.mode(Theme.of(context).colorScheme.primaryBlue.withOpacity(0.5), BlendMode.darken) : null),
                    width: width,
                    height: height,
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (subtitle != null) ...[
                    Text(
                      cutTitle,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      cutSubtitle!,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ] else ...[
                    Container(
                      width: width,
                      child: Text(
                        cutTitle,
                        textAlign: center == null ? TextAlign.center : TextAlign.start,
                        maxLines: 2,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ]
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
