import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/const/my_style.dart';
import 'package:fugi_furniture_shop/theme/color_pallete.dart';

import '../widget/my_tab_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  late List<Widget> data;
  late List<Map<String, String>> productDatas;

  @override
  void initState() {
    super.initState();
    data = [
      myTabItem(label: 'All'),
      myTabItem(label: 'Living Room'),
      myTabItem(label: 'Bedroom'),
      myTabItem(label: 'Dining Room'),
      myTabItem(label: 'Kitchen'),
    ];
    _controller = TabController(length: data.length, vsync: this);
    productDatas = [
      {
        'asset' :'assets/images/1.png',
        'label' : 'Stylish Chair',
        'currency': "\$",
        'price': '170',
        'rating': '4.8',
        'favorite': 'true'
      },
      {
        'asset' :'assets/images/2.png',
        'label' : 'Modern Table',
        'currency': "\$",
        'price': '75',
        'rating': '4.9',
        'favorite': 'true'
      },
      {
        'asset' :'assets/images/3.png',
        'label' : 'Wooden Console',
        'currency': "\$",
        'price': '240',
        'rating': '4.7',
        'favorite': 'true'
      },
      {
        'asset' :'assets/images/4.png',
        'label' : 'Brown Armchair',
        'currency': "\$",
        'price': '210',
        'rating': '4.9',
        'favorite': 'true'
      },
    ];
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
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(
                8,
              ),
              itemCount: productDatas.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 4,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(productDatas[index]['asset']!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Text(productDatas[index]['label']!),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(productDatas[index]['price']!),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber[200],),
                                Text(productDatas[index]['rating']!),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
              // children: [
              //   Card(
              //     child: Container(
              //       width: 100.00,
              //       height: 100.00,
              //       decoration: const BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage('assets/images/1.png'),
              //           fit: BoxFit.fill,
              //         ),
              //       ),
              //     ),
              //   ),
              // ],
            ),
          ),
          // ListView(),
        ],
      ),
    );
  }
}
