import 'package:flutter/material.dart';

import './cardshop.dart';

class ShopProducts extends StatelessWidget {
  final name;
  final products;
  final supplier;
  const ShopProducts({Key? key, this.name, this.products, this.supplier})
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
              padding:
                  EdgeInsets.only(top: 40, left: 60, right: 60, bottom: 35),
              child: Container(
                  width: double.infinity,
                  height: 470,
                  child: ProductSlider(productsList: products)))
        ]);
  }
}
