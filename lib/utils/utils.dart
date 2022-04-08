import 'package:flutter/widgets.dart';

class Utils {
  Utils._();

  static FormFieldValidator<String>? validatorForm(String errorText) {
    return (value) {
      if ((value ?? '').isEmpty) {
        return errorText;
      }
    };
  }
}
