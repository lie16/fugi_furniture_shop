import 'package:flutter/material.dart';

import '../../../const/my_style.dart';

Widget myTabItem ({
  required String label,
}){
  return Center(
        child: Text(
          label,
          style: MyTextStyle().label,
        ),
      );
}