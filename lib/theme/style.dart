import 'package:flutter/material.dart';
import 'colors.dart';

class AppStyle {
  AppStyle._();

  static final inputTextBorder = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: ColorApp.bordercolor, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: ColorApp.primary, width: 1),
    ),
    filled: true,
    fillColor: Colors.white,
  );

  static const bottomSheetBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
  );

  static const tileBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    side: BorderSide(color: ColorApp.primary, width: 1),
  );

  static const textWarning = TextStyle(color: ColorApp.fontInfo, fontSize: 14, fontWeight: FontWeight.bold);
}
