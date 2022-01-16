import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:r_home/application/disputes_form/disputes_form_bloc.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/my_homes_form/widgets/addition_card_widget.dart';

class ImageCarouselWidget extends StatelessWidget {
  final String title;
  final List<String> imagesPath;

  const ImageCarouselWidget({Key? key, required this.title, required this.imagesPath}) : super(key: key);

  _selectImage(BuildContext context) async {
    List<XFile>? pickedFiles = await ImagePicker().pickMultiImage(
    );

    if (pickedFiles == null) return;
    
    for (var file in pickedFiles) {
      context.read<DisputesFormBloc>().add(DisputesFormEvent.imageReceived(file.path));
    }
  }

  _takePicture(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile == null) return;

    context.read<DisputesFormBloc>().add(DisputesFormEvent.imageReceived(pickedFile.path));
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => 
      Container(
        height: 150,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.camera_alt, color: Theme.of(context).colorScheme.primaryBlue),
              title: Text(
                "Camera",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primaryBlue
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _takePicture(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album, color: Theme.of(context).colorScheme.primaryBlue),
              title: Text(
                "Gallery",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primaryBlue
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _selectImage(context);
              },
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisputesFormBloc, DisputesFormState>(
      builder: (context, state) {
        return SizedBox(
          height: 170,
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
                  style: const TextStyle(
                    fontWeight: FontWeight.w600
                  ),
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
                          onPressed: () => _showModal(context)
                        ),
                      );
                    }

                    return Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                      child: Image.file(
                        File(imagesPath[index-1]),
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
      },
    );
  }
}