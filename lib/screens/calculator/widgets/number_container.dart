import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';

class NumberContainer extends StatelessWidget {
  final String number;
  final double width;
  const NumberContainer({super.key, required this.number, this.width = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: width,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(child: AppText(text: number)),
    );
  }
}
