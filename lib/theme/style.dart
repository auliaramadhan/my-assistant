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
  
  static const radius16 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  );

  static const tileBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    side: BorderSide(color: ColorApp.divider, width: 1),
  );

  static final cardBorder = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(4)),
    border: Border.all(color: ColorApp.divider, width: 1),
    color: ColorApp.background2,
  );



  static const textWarning = TextStyle(color: ColorApp.fontInfo, fontSize: 14, fontWeight: FontWeight.bold);
}
