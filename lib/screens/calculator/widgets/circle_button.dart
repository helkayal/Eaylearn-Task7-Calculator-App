import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';

class CircleButton extends StatelessWidget {
  final String symbol;
  final VoidCallback onTap;

  const CircleButton({super.key, required this.symbol, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blueGrey, width: 2),
        ),
        child: Center(child: AppText(text: symbol, fontSize: 20)),
      ),
    );
  }
}
