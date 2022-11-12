import 'package:flutter/material.dart';

Widget lieFavorite() {
  return Container(
    // height: 10,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.all(4),
    child: IconButton(
      icon: Icon(
        Icons.favorite_outline,
        color: Colors.red.shade400,
      ), onPressed: () {  },
    ),
  );
}
