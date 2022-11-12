import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/const/app_sizes.dart';

import '../../../../const/my_style.dart';

class LieCardItem extends StatelessWidget {
  const LieCardItem({
    super.key,
    required this.onTap,
    required this.productDatas,
  });
  final void Function() onTap;
  final Map<String, String> productDatas;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
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
                    image: AssetImage(productDatas['asset']!),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(4),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.red.shade400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            gapH8,
            Padding(
              padding: EdgeInsets.only(
                left: 8,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  productDatas['label']!,
                  style: MyTextStyle().labelMedium,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${productDatas['currency']!}${productDatas['price']!}',
                    style: MyTextStyle().labelLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber[200],
                      ),
                      Text(
                        productDatas['rating']!,
                        style: MyTextStyle().labelMediumRegular,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            gapH8,
          ],
        ),
      ),
    );
  }
}
