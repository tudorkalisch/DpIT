import 'package:flutter/material.dart';

import './productslider.dart';

class RecommendedCategory extends StatelessWidget {
  final category;
  final products;
  const RecommendedCategory({Key? key, this.category, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 60),
          child: Text(
            this.category,
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40, left: 60, right: 60, bottom: 35),
          child: Container(
            width: double.infinity,
            height: 470,
            child: ProductSlider(productsList: products)
          )
        )
      ]
    );
  }
}