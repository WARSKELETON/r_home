import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

class ImageViewerPage extends StatelessWidget {
  final List<String> images;

  const ImageViewerPage({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PhotoViewGallery.builder(
            itemCount: images.length,
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
              color: Colors.white,
            ),
            enableRotation: true,
            loadingBuilder: (context, event) => Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  backgroundColor: Theme.of(context).colorScheme.primaryBlue,
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
