import 'package:flutter/material.dart';
import 'package:task7_calculator_app/screens/calculator/widgets/app_text.dart';

Widget resetRow() {
  return InkWell(
    child: Container(
      height: 60,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: Border.all(color: Colors.blueGrey, width: 6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/ic_reset.gif", height: 30),
          SizedBox(width: 10),
          AppText(text: "Reset", isBold: true, fontSize: 24),
        ],
      ),
    ),
  );
}
