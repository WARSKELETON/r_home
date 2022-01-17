  import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';

void showModal(BuildContext context, Function takePicture, Function selectImage) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => 
      SizedBox(
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
                takePicture(context);
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
                selectImage(context);
              },
            )
          ],
        ),
      )
    );
  }