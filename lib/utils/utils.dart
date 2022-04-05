import 'package:flutter/widgets.dart';

class Utils {
  Utils._();

  static FormFieldValidator<String>? validatorForm(errorText) {
    return (value) {
      if ((value ?? '').isEmpty) {
        return errorText;
      }
    };
  }
}
