import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/number_container.dart';

Widget topRow() {
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
        NumberContainer(number: '0'),
        AppText(text: " + ", isBold: true),
        NumberContainer(number: '0'),
        AppText(text: " = ", isBold: true),
        NumberContainer(number: '0'),
      ],
    ),
  );
}
