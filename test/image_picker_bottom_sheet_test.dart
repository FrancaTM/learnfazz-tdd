import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:learn_fazz_tdd/frontend/image_picker_bottom_sheet.dart'
    as ImagePickerBottomSheet;

void main() {
  testWidgets(
      'Bottom sheet should appear and show choose from gallery or take a new picture text',
      (WidgetTester tester) async {
    BuildContext savedContext;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(builder: (BuildContext context) {
          savedContext = context;
          return Container();
        }),
      ),
    );

    await tester.pump();
    expect(find.text(ImagePickerBottomSheet.kTakeNewPictureText), findsNothing);
    expect(
        find.text(ImagePickerBottomSheet.kChooseFromGalleryText), findsNothing);

    ImagePickerBottomSheet.showImagePickerBottomSheet(savedContext);

    await tester.pump(); // Bottom sheet show animation starts
    await tester.pump(const Duration(seconds: 2)); // animation done

    expect(
        find.text(ImagePickerBottomSheet.kTakeNewPictureText), findsOneWidget);
    expect(find.text(ImagePickerBottomSheet.kChooseFromGalleryText),
        findsOneWidget);
  });

  testWidgets('Bottom sheet should appear and show correct icon',
      (WidgetTester tester) async {
    BuildContext savedContext;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(builder: (BuildContext context) {
          savedContext = context;
          return Container();
        }),
      ),
    );

    await tester.pump();

    expect(find.byIcon(Icons.add_photo_alternate), findsNothing);
    expect(find.byIcon(Icons.add_a_photo), findsNothing);

    ImagePickerBottomSheet.showImagePickerBottomSheet(savedContext);

    await tester.pump(); // Bottom sheet show animation starts
    await tester.pump(const Duration(seconds: 2)); // animation done

    expect(find.byIcon(Icons.add_photo_alternate), findsOneWidget);
    expect(find.byIcon(Icons.add_a_photo), findsOneWidget);
  });
}
