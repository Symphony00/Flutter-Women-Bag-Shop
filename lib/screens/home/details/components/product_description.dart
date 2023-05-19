import 'package:flutter/material.dart';
import 'package:women_shop_app/constants.dart';
import 'package:women_shop_app/models/products.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Text(
        product.description,
        style: const TextStyle(
          height: 1.5,
          color: kTextColor,
        ),
      ),
    );
  }
}
