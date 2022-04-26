import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//the title style
Widget titleStyle({required String title}) {
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
  Color textColor = const Color(0xFF58777B),
  bool bottomPadding = true,
}) {
  return Padding(
    padding: bottomPadding
        ? const EdgeInsets.only(bottom: 5.0)
        : const EdgeInsets.only(bottom: 0.0),
    child: Text(
      text,
      style: GoogleFonts.spaceMono(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    ),
  );
}

Widget resultTextStyle({
  required String text,
}) {
  return Text(
    text,
    style: GoogleFonts.spaceMono(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xFF29c0AD),
        fontSize: 34.0,
      ),
    ),
  );
}
