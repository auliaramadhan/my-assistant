import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'checkbox_list.dart';
import 'spacing.dart';

class ModalCheckbox<T extends CheckboxButtonSelected> extends StatefulWidget {
  final List<T> listData;
  final Iterable<String> listText;
  final String? title;
  final ValueChanged<T?> onChanged;
  ModalCheckbox({
    Key? key,
    required this.listData,
    required this.listText,
    required this.onChanged,
    this.title,
  }) : super(key: key) {
    assert(listData.length == listText.length);
  }

  @override
  State<ModalCheckbox<T>> createState() => _ModalCheckboxState<T>();
}

class _ModalCheckboxState<T extends CheckboxButtonSelected> extends State<ModalCheckbox<T>> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null) Center(child: Text(widget.title!, style: textStyle.titleLarge)),
          const ExtraHeight(),
          ...List.generate(
            widget.listData.length,
            (index) => Container(
              // padding: const EdgeInsets.only(bottom: 8),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: ColorApp.divider, width: 1),
                ),
              ),
              child: CustomCheckboxTile<T>(
                  onChanged: (value) {
                    value.selected = !value.selected;
                    setState(() {});
                  },
                  value: widget.listData[index],
                  selected: widget.listData[index].selected,
                  text: widget.listText.elementAt(index)),
            ),
          )
        ],
      ),
    );
  }
}

abstract class CheckboxButtonSelected {
  bool selected = false;
}
