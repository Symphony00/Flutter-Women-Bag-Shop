import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoriesTitles extends StatefulWidget {
  const CategoriesTitles({super.key});

  @override
  State<CategoriesTitles> createState() => _CategoriesTitlesState();
}

final List categoriesList = ['Hand Bag', "Jewllery", 'Footwear', 'Dresses'];
int selectedIndex = 0;

class _CategoriesTitlesState extends State<CategoriesTitles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding - 2),
            child: Text(
              categoriesList[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: kDefaultPadding / 4,
            left: kDefaultPadding,
          ),
          height: 4,
          width: 32,
          color: selectedIndex == index ? Colors.black : Colors.transparent,
        )
      ],
    );
  }
}
