import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class ButtonPrimary extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final Icon? icon;
  const ButtonPrimary({
    Key? key,
    required this.onPressed,
    required this.text,
    this.icon,
  }) : super(key: key);

  ButtonStyle get style  => ElevatedButton.styleFrom(
        primary: ColorApp.primary,
        elevation: 0,
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      );

  @override
  Widget build(BuildContext context) {

    if (icon != null) {
      return ElevatedButton.icon(icon: icon!, onPressed: onPressed, label: Text(text), style: style);
    }
    return ElevatedButton(onPressed: onPressed, child: Text(text), style: style);
  }
}