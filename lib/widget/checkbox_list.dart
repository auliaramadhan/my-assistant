import 'package:flutter/material.dart';
import 'package:my_assistant/theme/colors.dart';


class CustomCheckboxTile<T> extends StatelessWidget {
  final T value;
  final bool selected;
  final String text;
  final ValueChanged<T> onChanged;

  const CustomCheckboxTile({
    required this.onChanged,
    required this.value,
    required this.selected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      selected: selected,
      // selectedColor: Colors.blue[100],
      selectedTileColor: Colors.blue[100],
      onTap: () => onChanged(value),
      // trailing:  Visibility(
      //   child: const Icon(Icons.check_circle, color: Colors.blue),
      //   visible: selected,
      // ),
      trailing: selected ? const Icon(Icons.check_box_outlined, color: Colors.blue) 
      : const Icon(Icons.check_box_outline_blank_rounded, color: ColorApp.iconGrey) 
      ,
    );
  }

  /* Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : null,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey[300]!,
          width: 2,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey[600]!,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  } */
}
