import 'package:flutter/material.dart';

import './category.dart';

import './categorylist.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({Key? key}) : super(key: key);

  final listOfCategories = const ["Zidărie", "Termoizolații", "Termopane", "Ciment", "Prăfoase", "Acoperiș", "Termopan", "Plexiglas", "Lemn", "Oxid"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 90),
        child: Row(
          children: [
            CategoryList(),
            for (var category in listOfCategories) Category(categoryName: category),
          ],
        )
      )
    );
  }
}