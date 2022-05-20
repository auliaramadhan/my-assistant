import 'package:flutter/material.dart';
import 'package:my_assistant/theme/colors.dart';
import 'package:my_assistant/theme/font.dart';
import 'package:my_assistant/theme/style.dart';

class Utils {
  Utils._();

  static void showInfo(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text, style: AppFont.snackbarWhite),
      shape: AppStyle.radius16 ,
      elevation: 12,
      margin: const EdgeInsets.all(8),
      behavior: SnackBarBehavior.floating,
      backgroundColor: ColorApp.info,
    ));
  }

  static FormFieldValidator<String>? validatorForm(String errorText) {
    return (value) {
      if ((value ?? '').isEmpty) {
        return errorText;
      }
    };
  }
}
