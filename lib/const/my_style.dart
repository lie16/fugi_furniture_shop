import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  MyTextStyle();

  static final String? _fontChoice = GoogleFonts.poppins().fontFamily;

  TextStyle labelMedium = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: _fontChoice,
  );

  TextStyle label = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontFamily: _fontChoice,
  );

  TextStyle pageHeadingLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    fontFamily: _fontChoice,
  );

  TextStyle pageHeadingMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: _fontChoice,
  );

  TextStyle appTitle = TextStyle(
    color: Colors.black,
    fontFamily: _fontChoice,
  );
}
