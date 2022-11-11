
import 'package:flutter/material.dart';

import '../../../common/widget/widget.dart';
import '../../../theme/color_pallete.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onClicked,
  });
  final int selectedIndex;
  final ValueChanged<int> onClicked;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: [
        lieBottomNavigationBarItem(
          icon: Icons.home_outlined,
          activeIconColor: Colors.white,
          inactiveIconColor: ColorPallete.fugiShop.shade900,
          selectedColor: ColorPallete.fugiShop.shade200,
        ),
        lieBottomNavigationBarItem(
          icon: Icons.shopping_cart_outlined,
          activeIconColor: Colors.white,
          inactiveIconColor: ColorPallete.fugiShop.shade900,
          selectedColor: ColorPallete.fugiShop.shade200,
        ),
        lieBottomNavigationBarItem(
          icon: Icons.star_border_sharp,
          activeIconColor: Colors.white,
          inactiveIconColor: ColorPallete.fugiShop.shade900,
          selectedColor: ColorPallete.fugiShop.shade200,
        ),
        lieBottomNavigationBarItem(
          icon: Icons.person_outline,
          activeIconColor: Colors.white,
          inactiveIconColor: ColorPallete.fugiShop.shade900,
          selectedColor: ColorPallete.fugiShop.shade200,
        ),
      ],
      onTap: onClicked,
    );
  }
}
