import 'package:flutter/material.dart';

final kChooseFromGalleryText = 'Choose from gallery';
final kTakeNewPictureText = 'Take a new picture';

void showImagePickerBottomSheet(BuildContext context) async {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(kChooseFromGalleryText),
              onTap: () {},
            ),
            ListTile(
              title: Text(kTakeNewPictureText),
              onTap: () {},
            ),
          ],
        ),
      );
    },
  );
}
