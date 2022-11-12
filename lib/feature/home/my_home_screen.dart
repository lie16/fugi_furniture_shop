import 'package:flutter/material.dart';

import 'page/my_home_page.dart';
import 'widget/bottomNavBar.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const MyHomePage(),
    const Center(
      child: Text('Shopping Cart'),
    ),
    const Center(
      child: Text('Favorites'),
    ),
    const Center(
      child: Text('Personal'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onClicked: (int value) {
          _selectedIndex = value;
          setState(() {
            _selectedIndex;
          });
        },
      ),
    );
  }
}
