import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';

class NumberContainer extends StatelessWidget {
  final String number;
  const NumberContainer({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(child: AppText(text: number)),
    );
  }
}
