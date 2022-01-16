import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

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
