import 'package:flutter/material.dart';

import '../../../common/widget/color_chooser.dart';
import '../../../common/widget/star_rating_bar.dart';
import '../../../const/my_style.dart';
import '../../../theme/color_pallete.dart';

class MyDetailProduct extends StatefulWidget {
  const MyDetailProduct({super.key});

  @override
  State<MyDetailProduct> createState() => _MyDetailProductState();
}

class _MyDetailProductState extends State<MyDetailProduct> {
  double rating = 4;
  List<Map<String, dynamic>> data = [
    {
      'color': ColorPallete.productColorOne,
      'selected': ColorPallete.productColorOne,
    },
    {
      'color': ColorPallete.productColorTwo,
      'selected': Colors.white,
    },
    {
      'color': ColorPallete.productColorThree,
      'selected': Colors.white,
    },
    {
      'color': ColorPallete.productColorFour,
      'selected': Colors.white,
    },
  ];

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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/5.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Material(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0)),
            elevation: 12.0,
            // child: Text('asdad'),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'WoodenCoff',
                        style: MyTextStyle().textMediumLarge,
                      ),
                      Text(
                        '\$240',
                        style: MyTextStyle().textRegularLarge,
                      ),
                    ],
                  ),
                  StarRatingBar(
                    rating: rating,
                    color: ColorPallete.ratingColor,
                    onRatingChanged: (rating) => setState(
                      () => this.rating = rating,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chosse a color:',
                        style: MyTextStyle().textLightMedium,
                      ),
                      ColorChooser(
                        listColor: data,
                        // listColor: [
                        //   ColorPallete.productColorOne,
                        //   ColorPallete.productColorTwo,
                        //   ColorPallete.productColorThree,
                        //   ColorPallete.productColorFour,
                        // ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Select Quantity:'),
                      Text('quantity bar'),
                    ],
                  ),
                  Text(
                      'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.'),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'ADD TO CART',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // bottomSheet: Container(
      //   height: 400,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(16),
      //   ),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Text('Hello World'),
      //               Text('Price'),
      //             ],
      //           ),
      //           // Text('rating'),
      //           // Row(
      //           //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           //   children: [
      //           //     Text('Choose a color'),
      //           //     Text('Price'),
      //           //   ],
      //           // ),
      //         ],
      //       ),
      //   ),
    );
  }
}
