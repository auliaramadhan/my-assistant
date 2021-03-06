import 'package:flutter/material.dart';
import 'package:my_assistant/theme/colors.dart';
import 'radio_list.dart';
import 'spacing.dart';

class ModalRadio<T> extends StatelessWidget {
  final List<T> listData;
  final Iterable<String> listText;
  final T selected;
  final String? title;
  final ValueChanged<T?> onChanged;
  ModalRadio({
    Key? key,
    required this.listData,
    required this.listText,
    required this.selected,
    required this.onChanged,
    this.title,
  }) : super(key: key) {
    assert(listData.length == listText.length);
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) Center(child: Text(title!, style: textStyle.titleLarge)),
          const ExtraHeight(),
          ...List.generate(
            listData.length,
            (index) => Container(
              // padding: const EdgeInsets.only(bottom: 8),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: ColorApp.divider, width: 1),
                ),
              ),
              child: CustomRadioTile(
                  value: listData[index], groupValue: selected, onChanged: onChanged, text: listText.elementAt(index)),
            ),
          )
        ],
      ),
    );
  }
}
