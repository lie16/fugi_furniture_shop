import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/const/my_style.dart';
import 'package:fugi_furniture_shop/theme/color_pallete.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  late List<Widget> data;

  @override
  void initState() {
    super.initState();
    data = [
      Center(
        child: Text(
          'All',
          style: MyTextStyle().label,
        ),
      ),
      Center(
        child: Text(
          'Living Room',
          style: MyTextStyle().label,
        ),
      ),
      Center(
        child: Text(
          'Bedroom',
          // overflow: TextOverflow.visible,
          style: MyTextStyle().label,
        ),
      ),
      Center(
        child: Text(
          'Dining Room',
          style: MyTextStyle().label,
        ),
      ),
      Center(
        child: Text(
          'Kitchen',
          style: MyTextStyle().label,
        ),
      ),
    ];
    _controller = TabController(length: data.length, vsync: this);
  }

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
          style: MyTextStyle().appTitle,
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover the most modern furniture',
            style: MyTextStyle().pageHeadingLarge,
          ),
          TabBar(
            controller: _controller,
            tabs: data,
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: ColorPallete.tabColor,
            ),
          ),
          Text(
            'Recommended Furnitures ',
            style: MyTextStyle().pageHeadingMedium,
          ),
          // ListView(),
        ],
      ),
    );
  }
}
