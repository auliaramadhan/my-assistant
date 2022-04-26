import 'package:flutter/material.dart';

import '../theme/colors.dart';

class StepperRegistration extends StatelessWidget {
  final int numberStep;
  final int complete;

  const StepperRegistration({Key? key, required this.numberStep, required this.complete}) : super(key: key);

  step(bool completed) => Container(
        decoration: BoxDecoration(
          color: completed ? Colors.blue : ColorApp.bgInfo,
          borderRadius: BorderRadius.circular(4),
        ),
        height: 12,
        margin: const EdgeInsets.symmetric(horizontal: 4),
      );

  @override
  Widget build(BuildContext context) {
    return Row(children: List.generate(numberStep, (index) => Expanded(child: step(index <= (complete -1)))));
  }
}
