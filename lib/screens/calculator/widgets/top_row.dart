import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/number_container.dart';

Widget topRow(int num1, int num2, num result, String operation) {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      border: Border.all(color: Colors.blueGrey, width: 10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NumberContainer(number: '$num1'),
        AppText(text: " $operation ", isBold: true),
        NumberContainer(number: '$num2'),
        AppText(text: " = ", isBold: true),
        NumberContainer(number: '$result', width: 120),
      ],
    ),
  );
}
