import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/number_change_container.dart';

Widget numberChangeRow({
  required int num1,
  required int num2,
  required VoidCallback onNum1Increment,
  required VoidCallback onNum1Decrement,
  required VoidCallback onNum2Increment,
  required VoidCallback onNum2Decrement,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      NumberChangeContainer(
        text: 'First Number',
        value: num1,
        onIncrement: onNum1Increment,
        onDecrement: onNum1Decrement,
      ),
      NumberChangeContainer(
        text: 'Second Number',
        value: num2,
        onIncrement: onNum2Increment,
        onDecrement: onNum2Decrement,
      ),
    ],
  );
}
