import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:women_shop_app/constants.dart';
import 'package:women_shop_app/screens/home/details/components/product_description.dart';
import 'package:women_shop_app/screens/home/details/components/product_title_with_image.dart';

import '../../../../models/products.dart';
import 'cart_counter.dart';
import 'cart_counter_with_lovebtn.dart';
import 'color_and_price.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * .12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndPrice(product: product),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      ProductDescription(product: product),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      const CounterWithLoveBtn(),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                              border: Border.all(color: product.color),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icons/cart.svg",
                                color: product.color,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              height: 50,
                              decoration: BoxDecoration(
                                color: product.color,
                                border: Border.all(color: product.color),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Buy Now",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
