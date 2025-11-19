import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/number_change_container.dart';

Widget numberChangeRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      NumberChangeContainer(text: 'First Number'),
      NumberChangeContainer(text: 'Second Number'),
    ],
  );
}
