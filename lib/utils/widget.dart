import 'package:flutter/material.dart';

class WidgetApp {
  WidgetApp._();

  static prefixField(String text, [TextStyle? style]) => Container(
        padding: const EdgeInsets.fromLTRB(16, 15, 8, 17),
        child: Text(text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ).merge(style)),
      );
  static suffixField(String text, [TextStyle? style]) => Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 16, 17),
        child: Text(text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ).merge(style)),
      );
}
