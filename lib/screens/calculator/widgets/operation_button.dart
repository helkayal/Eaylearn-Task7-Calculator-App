import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';

class OperationButton extends StatelessWidget {
  final String text;
  const OperationButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 190,
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color: Colors.blueGrey,
        ),
        child: Center(child: AppText(text: text, fontSize: 20, isBold: true)),
      ),
    );
  }
}
