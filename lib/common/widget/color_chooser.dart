import 'dart:developer';

import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class ColorChooser extends StatelessWidget {
  // final List<Color> listColor;
  final List<Map<String, dynamic>> listColor;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? selected;

  const ColorChooser({
    super.key,
    required this.listColor,
    this.rating = .0,
    this.onRatingChanged,
    this.selected = Colors.grey,
  });

  Widget buildStar(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        log('index = $index');
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            color: listColor[index]['selected'],
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.circle,
                color: listColor[index]['color'],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        listColor.length,
        (index) {
          return buildStar(context, index);
        },
      ),
    );
    // return ListView.builder(
    //   itemBuilder: ((context, index) {
    //     return buildStar(
    //       context,
    //       index,
    //     );
    //   }),
    // );
  }
}
