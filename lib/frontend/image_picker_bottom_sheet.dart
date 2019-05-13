//import 'dart:async';
//
//import 'package:flutter/material.dart';
//
//final kChooseFromGalleryText = 'Choose from gallery';
//final kTakeNewPictureText = 'Take a new picture';
//
//void showImagePickerBottomSheet(BuildContext context) async {
//  return showModalBottomSheet<void>(
//    context: context,
//    builder: (BuildContext context) {
//      return Column(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//          ListTile(
//            title: Text(kChooseFromGalleryText),
//            onTap: () {},
//          ),
//          ListTile(
//            title: Text(kTakeNewPictureText),
//            onTap: () {},
//          ),
//        ],
//      );
//    },
//  );
//}

import 'dart:io';

import 'package:flutter/material.dart';

final kChooseFromGalleryText = "Choose from gallery";
final kTakeANewPictureText = "Take a new picture";

void showImagePickerBottomSheet(BuildContext context) async {
  return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              title: new Text(kChooseFromGalleryText),
              onTap: () {},
            ),
            new ListTile(
              title: new Text(kTakeANewPictureText),
              onTap: () {},
            ),
          ],
        );
      });
}
