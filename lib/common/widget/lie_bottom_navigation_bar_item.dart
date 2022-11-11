import 'package:flutter/material.dart';

BottomNavigationBarItem lieBottomNavigationBarItem({
  required IconData icon,
  required Color inactiveIconColor,
  required Color activeIconColor,
  required Color selectedColor,
  String? label = '',
}) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: inactiveIconColor,
    ),
    activeIcon: Container(
      decoration: BoxDecoration(
        color: selectedColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: activeIconColor,
        ),
      ),
    ),
    label: label,
  );
}
