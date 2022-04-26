import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color(0xFF00474B),

//wiget to return tips buttons
Widget button({
  // required Function function,
  required String btnText,
  Color textColor = const Color(0xFFFFFFFF),
  Color btnColor = const Color(0xFF00474B),
  double fontSize = 28,
}) {
  return TextButton(
    onPressed: () {},
    child: Text(
      btnText,
      textAlign: TextAlign.center,
      style: GoogleFonts.spaceMono(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    ),
    style: TextButton.styleFrom(
      primary: const Color(0xFFF3F8FB),
      backgroundColor: btnColor,
    ),
  );
}
