import 'dart:io';

import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/circle_icon_button_widget.dart';
import 'package:r_home/presentation/core/image_deletion_dialog.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/show_modal_function.dart';
import 'package:r_home/presentation/my_homes_form/widgets/addition_card_widget.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ImageCarouselWidget extends StatelessWidget {
  final String title;
  final List<String> imagesPath;
  final Function(BuildContext) selectImage;
  final Function(BuildContext) takePicture;
  final BuildContext blocContext;
  final Function(String) deletionOnPressed;

  const ImageCarouselWidget({Key? key, required this.blocContext, required this.title, required this.imagesPath, required this.selectImage, required this.takePicture, required this.deletionOnPressed}) : super(key: key);

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
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.file(
                        File(imagesPath[index - 1]),
                        width: 100,
                        height: 100,
                      ),
                      Container(
                        transform: Matrix4.translation(vector.Vector3(10, -15, 0)),
                        child: CircleIconButtonWidget(
                          onPressed: () => showDialog(
                            context: context,
                            builder: (_) => ImageDeletionDialog(
                              onPressed: () => deletionOnPressed(imagesPath[index - 1])
                            ),
                          ),
                          backgroundColor: Theme.of(context).colorScheme.primaryBlue,
                          icon: const Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 20,
                          ),
                          splashColor: Colors.black,
                          size: 5,
                        ),
                      )
                    ]
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