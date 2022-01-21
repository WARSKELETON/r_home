import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:r_home/application/image_viewer/image_viewer_bloc.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

class ImagesViewWidget extends StatelessWidget {
  final List<String> images;
  const ImagesViewWidget({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();

    final index = context.watch<ImageViewerBloc>().state.selectedImageIndex;

    return PageView.builder(
      itemCount: images.length,
      pageSnapping: true,
      controller: _pageController,
      onPageChanged: (page) {
        context.read<ImageViewerBloc>().add(ImageViewerEvent.changeSelectedImageIndex(page));
      },
      itemBuilder: (context, pagePosition) {
        return GestureDetector(
          child: Container(
            margin: const EdgeInsets.only(left: 2.0, right: 2.0),
            child: Image.network(
              images[pagePosition],
            ),
          ),
          onTap: () => images.isEmpty ? null : AutoRouter.of(context).push(ImagesViewerPageRoute(images: images, initialIndex: index)),
        );
      }
    );
  }
}
