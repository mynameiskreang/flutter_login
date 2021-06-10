import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);
const kPaddingSymmetric = EdgeInsets.symmetric(vertical: 20, horizontal: 40);

//เอกสารจาก https://flutter.dev/docs/release/breaking-changes/buttons
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: kPrimaryColor,
  padding: kPaddingSymmetric,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: kPrimaryColor,
  padding: kPaddingSymmetric,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  padding: kPaddingSymmetric,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
