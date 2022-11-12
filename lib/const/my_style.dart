import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  MyTextStyle();

  TextStyle label = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  TextStyle pageHeadingLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  TextStyle pageHeadingMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  TextStyle appTitle = TextStyle(
    color: Colors.black,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
