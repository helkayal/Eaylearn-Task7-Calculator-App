import 'package:flutter/material.dart';
import 'dart:math';
import 'package:task7_calculator_app/screens/calculator/widgets/number_change_row.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/operations_row.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/reset_row.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/top_row.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int num1 = 0;
  int num2 = 0;
  num result = 0;
  String operation = '';

  void _updateNum1(int change) {
    setState(() => num1 += change);
  }

  void _updateNum2(int change) {
    setState(() => num2 += change);
  }

  num _formatResult(num value) => double.parse(value.toStringAsFixed(2));

  void performOperation(String operator) {
    setState(() {
      operation = operator;
      switch (operator) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          if (num2 != 0) {
            result = _formatResult(num1 / num2);
          }
          break;
        case '^':
          result = _formatResult(pow(num1.toDouble(), num2.toDouble()));
          break;
        case '%':
          if (num2 != 0) {
            result = _formatResult(num1 % num2);
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFC6D2D8),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            children: [
              Spacer(),
              topRow(num1, num2, result, operation),
              SizedBox(height: 20),
              numberChangeRow(
                num1: num1,
                num2: num2,
                onNum1Increment: () => _updateNum1(1),
                onNum1Decrement: () => _updateNum1(-1),
                onNum2Increment: () => _updateNum2(1),
                onNum2Decrement: () => _updateNum2(-1),
              ),
              SizedBox(height: 40),
              operationsRow(
                onAddition: () => performOperation('+'),
                onSubtraction: () => performOperation('-'),
                onMultiplication: () => performOperation('*'),
                onDivision: () => performOperation('/'),
                onExponentiation: () => performOperation('^'),
                onModulus: () => performOperation('%'),
              ),
              SizedBox(height: 80),
              resetRow(
                onReset: () {
                  setState(() {
                    num1 = 0;
                    num2 = 0;
                    result = 0;
                    operation = "";
                  });
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
