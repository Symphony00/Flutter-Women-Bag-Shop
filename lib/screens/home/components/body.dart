import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:women_shop_app/models/products.dart';
import 'package:women_shop_app/screens/home/details/detail_screen.dart';

import '../../../constants.dart';
import 'categories_titles.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const CategoriesTitles(),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: kDefaultPadding / 3),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: kDefaultPadding - 10,
              mainAxisSpacing: kDefaultPadding,
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      product: products[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
