import 'package:flutter/material.dart';
import 'package:women_shop_app/constants.dart';
import 'package:women_shop_app/models/products.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    this.onPress,
    required this.product,
  });
  final Product product;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              // It was just for demo
              // Now we will use main/cross axis spacing in Grid
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child:
                  Hero(tag: "${product.id}", child: Image.asset(product.image)),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
              child: Text(
                products[0].title,
                style: const TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              '\$${product.price.toString()}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
