import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/widget/widget.dart';
import '../../theme/color_pallete.dart';
import 'widget/bottomNavBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Home',
                  style: GoogleFonts.poppins(),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_selectedIndex}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
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
