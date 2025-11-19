import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';

class NumberChangeContainer extends StatelessWidget {
  final String text;
  const NumberChangeContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(text: text, fontSize: 22),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey, width: 2),
              ),
              child: Center(child: AppText(text: "+", fontSize: 20)),
            ),
            SizedBox(width: 20),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey, width: 2),
              ),
              child: Center(child: AppText(text: "-", fontSize: 24)),
            ),
          ],
        ),
      ],
    );
  }
}
