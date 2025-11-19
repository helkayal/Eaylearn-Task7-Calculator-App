import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/circle_button.dart';

class NumberChangeContainer extends StatelessWidget {
  final String text;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const NumberChangeContainer({
    super.key,
    required this.text,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(text: text, fontSize: 22),
        Row(
          children: [
            CircleButton(symbol: "+", onTap: onIncrement),
            SizedBox(width: 20),
            CircleButton(symbol: "-", onTap: onDecrement),
          ],
        ),
      ],
    );
  }
}
