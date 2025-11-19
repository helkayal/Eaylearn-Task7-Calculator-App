import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/operation_button.dart';

Widget operationsRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        spacing: 10,
        children: [
          OperationButton(text: "+ Addition"),
          OperationButton(text: "* Multiplication"),
          OperationButton(text: "^ Exponentiation"),
        ],
      ),
      Column(
        spacing: 10,
        children: [
          OperationButton(text: "- Subtraction"),
          OperationButton(text: "/ Division"),
          OperationButton(text: "% Modulus"),
        ],
      ),
    ],
  );
}
