import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)
        ),
      )
    );
  }
}