import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class ImageIndexWidget extends StatelessWidget {
  final int numberOfImages;
  final int activePage;
  const ImageIndexWidget({Key? key, required this.numberOfImages, required this.activePage}) : super(key: key);

  List<Widget> indicators(BuildContext context, imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: currentIndex == index ? Theme.of(context).colorScheme.primaryBlue : Theme.of(context).colorScheme.primaryBlue.withOpacity(0.3),
          shape: BoxShape.circle),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: indicators(context, numberOfImages, activePage)
      ),
    );
  }
}
