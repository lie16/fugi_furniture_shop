import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/theme/color_pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  MyTextStyle();

  static final String? _fontChoice = GoogleFonts.poppins().fontFamily;

  TextStyle labelMedium = TextStyle(
    color: ColorPallete.mainFontColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: _fontChoice,
  );

  TextStyle label = TextStyle(
    color: ColorPallete.mainFontColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: _fontChoice,
  );

  TextStyle labelButtonBold = TextStyle(
    color: ColorPallete.mainFontColor,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontFamily: _fontChoice,
  );

  TextStyle labelMediumRegular = TextStyle(
    color: ColorPallete.mainFontColor,
    fontSize: 12,
    fontFamily: _fontChoice,
  );

  TextStyle labelLarge = TextStyle(
    color: ColorPallete.mainFontColor,
    fontSize: 20,
    fontFamily: _fontChoice,
  );

  TextStyle textLightMedium = TextStyle(
    color: ColorPallete.productDescFontColor,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    fontFamily: _fontChoice,
  );

  TextStyle textRegularMedium = TextStyle(
    color: ColorPallete.productDescFontColor,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    fontFamily: _fontChoice,
  );

  TextStyle textMediumLarge = TextStyle(
    color: ColorPallete.mainFontColor,
    fontWeight: FontWeight.w500,
    fontSize: 22,
    fontFamily: _fontChoice,
  );

  TextStyle textRegularLarge = TextStyle(
    color: ColorPallete.priceFontColor,
    fontSize: 26,
    fontFamily: _fontChoice,
  );

  TextStyle pageHeadingLarge = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    fontFamily: _fontChoice,
  );

  TextStyle pageHeadingMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    fontFamily: _fontChoice,
  );

  TextStyle appTitle = TextStyle(
    color: ColorPallete.mainFontColor,
    fontWeight: FontWeight.bold,
    fontFamily: _fontChoice,
  );
}
