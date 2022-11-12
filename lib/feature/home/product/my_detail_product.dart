import 'package:flutter/material.dart';

import '../../../common/widget/lie_favorite.dart';
import '../../../const/my_style.dart';

class MyDetailProduct extends StatefulWidget {
  const MyDetailProduct({super.key});

  @override
  State<MyDetailProduct> createState() => _MyDetailProductState();
}

class _MyDetailProductState extends State<MyDetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent.withOpacity(0),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Detail',
          style: MyTextStyle().appTitle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.red.shade400,
                ),
                onPressed: () {},
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.share_outlined),
            color: Colors.black,
            onPressed: () {
              // Todo search tar aja
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/5.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Container(
          //   child: Text('a'),
          // )
        ],
      ),
      bottomSheet: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Hello World'),
                    Text('Price'),
                  ],
                ),
                // Text('rating'),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Text('Choose a color'),
                //     Text('Price'),
                //   ],
                // ),
              ],
            ),
        ),
    );
  }
}
