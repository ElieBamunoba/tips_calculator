import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//the title style
Widget titleStyle({
  required String title,
}) {
  return Text(
    title,
    style: GoogleFonts.spaceMono(
      textStyle: const TextStyle(
          letterSpacing: 7,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF58777B)),
    ),
  );
}

// text field hint text style
Widget textStyle({
  required String text,
}) {
  return Text(
    text,
    style: GoogleFonts.spaceMono(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xFF58777B),
      ),
    ),
  );
}

//Color(0xFF00474B),

//wiget to return tips buttons
Widget button({
  // required Function function,
  required String btnText,
  Color textColor = const Color(0xFFFFFFFF),
  Color btnColor = const Color(0xFF00474B),
}) {
  return TextButton(
    onPressed: () {},
    child: Text(
      btnText,
      textAlign: TextAlign.center,
      style: GoogleFonts.spaceMono(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
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
