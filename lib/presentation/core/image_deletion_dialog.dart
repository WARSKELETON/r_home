import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/confirmation_dialog_widget.dart';

class ImageDeletionDialog extends StatelessWidget {
  final Function() onPressed;

  const ImageDeletionDialog({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConfirmationDialogWidget(
    action1: "Cancel", 
    action2: "Remove", 
    message: "Are you sure you want to remove the image?",
    onPressed: onPressed 
    );
  }
}
