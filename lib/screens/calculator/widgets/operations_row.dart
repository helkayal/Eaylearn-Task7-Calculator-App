import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/operation_button.dart';

Widget operationsRow({
  required VoidCallback onAddition,
  required VoidCallback onSubtraction,
  required VoidCallback onMultiplication,
  required VoidCallback onDivision,
  required VoidCallback onExponentiation,
  required VoidCallback onModulus,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        spacing: 20,
        children: [
          OperationButton(text: "+ Addition", onPressed: onAddition),
          OperationButton(
            text: "* Multiplication",
            onPressed: onMultiplication,
          ),
          OperationButton(
            text: "^ Exponentiation",
            onPressed: onExponentiation,
          ),
        ],
      ),
      Column(
        spacing: 20,
        children: [
          OperationButton(text: "- Subtraction", onPressed: onSubtraction),
          OperationButton(text: "/ Division", onPressed: onDivision),
          OperationButton(text: "% Modulus", onPressed: onModulus),
        ],
      ),
    ],
  );
}
