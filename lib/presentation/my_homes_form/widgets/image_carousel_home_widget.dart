import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:r_home/application/my_homes_form/my_homes_form_bloc.dart';
import 'package:r_home/presentation/core/image_carousel_widget.dart';

class ImageCarouselHomeWidget extends StatelessWidget {
  final String title;
  final List<String> imagesPath;

  const ImageCarouselHomeWidget(
      {Key? key, required this.title, required this.imagesPath})
      : super(key: key);

  _selectImage(BuildContext context) async {
    List<XFile>? pickedFiles = await ImagePicker().pickMultiImage(
      imageQuality: 50,
      maxHeight: 600,
      maxWidth: 900
    );

    if (pickedFiles == null) return;

    for (var file in pickedFiles) {
      context.read<MyHomesFormBloc>().add(MyHomesFormEvent.imageReceived(file.path));
    }
  }

  _takePicture(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxHeight: 600,
      maxWidth: 900
    );

    if (pickedFile == null) return;

    context.read<MyHomesFormBloc>().add(MyHomesFormEvent.imageReceived(pickedFile.path));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyHomesFormBloc, MyHomesFormState>(
      builder: (context, state) {
        return ImageCarouselWidget(blocContext: context, title: title, imagesPath: imagesPath, takePicture: (context) => _takePicture(context), selectImage: (context) => _selectImage(context));
      },
    );
  }
}
