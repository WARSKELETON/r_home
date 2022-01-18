import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImagesViewerPage extends StatelessWidget {
  final List<String> images;
  final int initialIndex;

  const ImagesViewerPage({Key? key, required this.images, required this.initialIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(
      initialPage: initialIndex
    );
    return Scaffold(
      body: GestureDetector(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PhotoViewGallery.builder(
            itemCount: images.length,
            pageController: _pageController,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(
                  images[index],
                ),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            scrollPhysics: const BouncingScrollPhysics(),
            backgroundDecoration: const BoxDecoration(
              color: Colors.black,
            ),
            enableRotation: true,
            loadingBuilder: (context, event) => Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  value: event == null || event.expectedTotalBytes == null
                      ? 0
                      : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
                ),
              ),
            ),
          ),
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
