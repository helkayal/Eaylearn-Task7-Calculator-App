import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final bool isBold;
  const AppText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.isBold = false,
    this.fontSize = 26,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }
}
