// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:learn_fazz_tdd/frontend/image_picker_bottom_sheet.dart'
    as ImagePickerBottomSheet;

void main() {
  testWidgets(
      'Bottom sheet should appear and show choose from gallery or take a new picture text',
      (WidgetTester tester) async {
    BuildContext savedContext;

    await tester.pumpWidget(MaterialApp(
      home: Builder(builder: (BuildContext context) {
        savedContext = context;
        return Container();
      }),
    ));

    await tester.pump();
    expect(ImagePickerBottomSheet.kTakeNewPictureText, findsNothing);
    expect(ImagePickerBottomSheet.kChooseFromGalleryText, findsNothing);

    ImagePickerBottomSheet.showImagePickerBottomSheet(savedContext);

    await tester.pump(); // Bottom sheet show animation starts
    await tester.pump(const Duration(seconds: 2)); // animation done

    expect(
        find.text(ImagePickerBottomSheet.kTakeNewPictureText), findsOneWidget);
    expect(find.text(ImagePickerBottomSheet.kChooseFromGalleryText),
        findsOneWidget);
  });
}
