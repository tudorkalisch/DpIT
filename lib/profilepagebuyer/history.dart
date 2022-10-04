import 'dart:html';

import 'package:flutter/material.dart';
import 'variables.dart';
import '../constants/constants.dart';
import '../product/product_card.dart';

class HistoryElement extends StatelessWidget {
  var name;
  var price;
  var supplier;
  var subCategory;
  var nrReviews;
  var image;

  HistoryElement(this.name, this.price, this.supplier, this.subCategory,
      this.nrReviews, this.image);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            width: 270,
            height: 230,
            child: TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => ProductCard(this.name, this.price,
                //           this.supplier, this.subCategory, this.nrReviews)),
                // );
              },
              child: Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 13, left: 13),
                      child: Text(
                        this.name,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                  Center(
                    child: SizedBox(
                        height: 170,
                        width: 164,
                        child: Image(image: AssetImage(this.image))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 180, left: 10),
                    child: Text(
                      this.price + ' /bucata',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200, left: 10),
                    child: Text(
                      this.supplier,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
