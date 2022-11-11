import 'package:flutter/material.dart';

import 'common/widget/lie_bottom_navigation_bar_item.dart';
import 'theme/color_pallete.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color enabledBottomColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
      ),
      Text(
        'Index 1: Business',
      ),
      Text(
        'Index 2: School',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
