import 'package:flutter/material.dart';

final kChooseFromGalleryText = 'Choose from gallery';
final kTakeNewPictureText = 'Take a new picture';

void showImagePickerBottomSheet(BuildContext context) async {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) => ImagePickerBottomSheet(),
  );
}

class ImagePickerBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.add_photo_alternate),
            title: Text(kChooseFromGalleryText),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text(kTakeNewPictureText),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
