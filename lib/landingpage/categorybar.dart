import 'dart:js';

import 'package:flutter/material.dart';

import './category.dart';

import './categorylist.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({Key? key, screenWidth}) : super(key: key);

  final listOfCategories = const ["Zidărie", "Termoizolații", "Termopane", "Ciment", "Prăfoase", "Acoperiș", "Termopan", "Plexiglas", "Lemn"];

  @override
  Widget build(BuildContext context) {
    final barWidth = MediaQuery.of(context).size.width - 180;

    final nrOfCategories = barWidth / 165;

    return Container(
      width: double.infinity,
      height: 65,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 90),
        child: Row(
          children: [
            CategoryList(),
            for (var i = 0; i < listOfCategories.length && i <= nrOfCategories; i++) Category(categoryName: listOfCategories[i]),
          ],
        )
      )
    );
  }
}