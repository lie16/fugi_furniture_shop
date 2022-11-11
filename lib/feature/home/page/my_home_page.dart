import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/color_pallete.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> data = [
    'All',
    'Living Room',
    'Bedroom',
    'Dining Room',
    'Kitchen',
  ];

  static Map<int, Widget> tabData = <int, Widget>{
    0: Text(
      'All',
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    ),
    1: Text(
      'Living Room',
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    ),
    2: Text(
      'Bedroom',
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    ),
    3: Text(
      'Dining Room',
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    ),
    4: Text(
      'Kitchen',
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              // Todo search tar aja
            },
          ),
        ],
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover the most modern furniture',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: TabBar(
              // controller: _controller,
              tabs: [
                Tab(
                  icon: const Icon(Icons.home),
                  text: 'Address',
                ),
                Tab(
                  icon: const Icon(Icons.my_location),
                  text: 'Location',
                ),
              ],
            ),
          ),
          // CupertinoSegmentedControl(
          //   borderColor: Colors.white,
          //   pressedColor: ColorPallete.fugiShop.shade200,
          //   children: tabData,
          //   onValueChanged: ((value) {}),
          // ),
        ],
      ),
    );
  }
}
