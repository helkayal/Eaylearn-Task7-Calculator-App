import 'package:flutter/material.dart';
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
              topRow(),
              SizedBox(height: 20),
              numberChangeRow(),
              SizedBox(height: 40),
              operationsRow(),
              SizedBox(height: 80),
              resetRow(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
