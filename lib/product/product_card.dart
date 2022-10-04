import 'package:flutter/material.dart';

import '../constants/constants.dart' as Constants;

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      this.productName,
      this.productPrice,
      this.supplierName,
      this.productSubCategory,
      this.productNrOfReviews})
      : super(key: key);

  final productName;
  final productPrice;
  final supplierName;
  final productSubCategory;
  final productNrOfReviews;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.white,
          child: Column(children: [
            Expanded(
                flex: 16,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Constants.blueGradientPath),
                          fit: BoxFit.cover)),
                )),
            Expanded(
                flex: 9,
                child: Container(
                    child: Stack(children: [
                  Positioned(
                      top: 15,
                      left: 15,
                      child: Text(
                        productName,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      )),
                  Positioned(
                      top: 40,
                      left: 15,
                      child: Text(
                        productPrice + " RON",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                  Positioned(
                      top: 75,
                      left: 15,
                      child: Text(
                        "Distribuitor: " + supplierName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                  Positioned(
                      top: 100,
                      left: 15,
                      child: Text(
                        "Categorie: " + productSubCategory,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                  Positioned(
                      bottom: 15,
                      left: 15,
                      child: Text(
                        productNrOfReviews + " review-uri",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                  Positioned(
                    bottom: 15,
                    right: 15,
                    child: Container(
                      width: 30,
                    ),
                  )
                ])))
          ])),
    );
  }
}
