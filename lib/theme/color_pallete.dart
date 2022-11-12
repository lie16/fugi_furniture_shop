import 'package:flutter/material.dart';

class ColorPallete {
  static const MaterialColor fugiShop =
      MaterialColor(_fugiShopPrimaryValue, <int, Color>{
    50: Color(0xFFE5E5E6),
    100: Color(0xFFBDBFC2),
    200: Color(0xFFBBBBBB),
    300: Color(0xFF666A70),
    400: Color(0xFF454A51),
    500: Color(_fugiShopPrimaryValue),
    600: Color(0xFF20252D),
    700: Color(0xFF1B1F26),
    800: Color(0xFF16191F),
    900: Color(0xFF0D0F13),
  });
  static const int _fugiShopPrimaryValue = 0xFF242A32;

  static const Color tabColor = Color(0xFF9A9390);
  static const Color ratingColor = Color(0xFFEEA427);

  static const Color mainFontColor = Color(0xFF4A4543);
  static const Color priceFontColor = Color(0xFF9A9390);
  static const Color productDescFontColor = Color(0xFF7A8D9C);

  static const Color productColorOne = Color(0xFF9A9390);
  static const Color productColorTwo = Color(0xFFEEA427);
  static const Color productColorThree = Color(0xFFE3E3E3);
  static const Color productColorFour = Color(0xFF80450A);
}
