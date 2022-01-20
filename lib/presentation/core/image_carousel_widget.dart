import 'dart:io';

import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/show_modal_function.dart';
import 'package:r_home/presentation/my_homes_form/widgets/addition_card_widget.dart';

class ImageCarouselWidget extends StatelessWidget {
  final String title;
  final List<String> imagesPath;
  final Function(BuildContext) selectImage;
  final Function(BuildContext) takePicture;
  final BuildContext blocContext;

  const ImageCarouselWidget({Key? key, required this.blocContext, required this.title, required this.imagesPath, required this.selectImage, required this.takePicture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            thickness: 8,
            height: 40,
            color: Color(0xFFE5E5E5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: imagesPath.length + 1,
              itemBuilder: (_, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 10.0),
                    child: AdditionCardWidget(
                      title: "Add Image",
                      width: 100,
                      height: 100,
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () => showModal(blocContext, takePicture, selectImage)),
                  );
                }

                return Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                  child: Image.file(
                    File(imagesPath[index - 1]),
                    width: 100,
                    height: 100,
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}