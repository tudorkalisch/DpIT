import 'package:flutter/material.dart';

import './card.dart';

class FavoriteProducts extends StatelessWidget {
  final name;
  final products;
  const FavoriteProducts({Key? key, this.name, this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 60),
            child: Text(
              this.name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 0),
              child: Container(
                  width: double.infinity,
                  height: 470,
                  child: ProductCardF(productsList: products)))
        ]);
  }
}
