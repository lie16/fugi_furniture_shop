import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/const/my_style.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  CartCounterState createState() => CartCounterState();
}

class CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          // borderRadius: BorderRadius.only(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildOutlinedButton(
                icon: Icons.remove,
                left: 8,
                press: () {
                  if (numOfItems > 1) {
                    setState(() {
                      numOfItems--;
                    });
                  }
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                numOfItems.toString().padLeft(2, '0'),
                style: MyTextStyle().labelMedium,
              ),
            ),
            buildOutlinedButton(
                icon: Icons.add,
                right: 8,
                press: () {
                  setState(() {
                    numOfItems++;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

Widget buildOutlinedButton({
  IconData? icon,
  double? right = 0,
  double? left = 0,
  Function()? press,
}) {
  return InkWell(
    onTap: press,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(left!),
          bottomLeft: Radius.circular(left),
          topRight: Radius.circular(right!),
          bottomRight: Radius.circular(right),
        ),
      ),
      child: Icon(
        icon,
      ),
    ),
  );
}
