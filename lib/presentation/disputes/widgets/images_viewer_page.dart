import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ImagesViewerPage extends StatelessWidget {
  final List<String> images;

  const ImagesViewerPage({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return Scaffold(
      body: GestureDetector(
        child: PageView.builder(
          itemCount: images.length,
          pageSnapping: true,
          controller: _pageController,
          onPageChanged: (page) {
          },
          itemBuilder: (context, pagePosition) {
            return Image.network(images[pagePosition]);
          }
        ),
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 0) {
            AutoRouter.of(context).pop();
          }
        },
      ),
    );
  }
}
