import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class ButtonBorder extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final Icon? icon;
  const ButtonBorder({
    Key? key,
    required this.onPressed,
    required this.text,
    this.icon,
  }) : super(key: key);

  ButtonStyle get style => OutlinedButton.styleFrom(
        primary: ColorApp.primary,
        elevation: 0,
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      );

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return OutlinedButton.icon(icon: icon!, onPressed: onPressed, label: Text(text), style: style);
    }
    return OutlinedButton(onPressed: onPressed, child: Text(text), style: style);
  }
}
