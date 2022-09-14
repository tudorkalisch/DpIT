import 'package:buildnow/landingpage/categorylist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/cupertino.dart';

import '../classes/shop.dart';

import '../appbar/appbar.dart';

import '../classes/product.dart';
import '../constants/constants.dart';
import '../landingpage/contactcard.dart';

import './shopproduct.dart';

class SupplierShop extends StatefulWidget {
  @override
  State<SupplierShop> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SupplierShop> {
  List<ShopProduct> ShopList = [
    ShopProduct(
        name: "Shop",
        products: [
          Product(
              name: "Caramizi",
              price: "30",
              supplierName: "Leroy Merlin",
              subCategory: "Kebe",
              nrOfReviews: "7")
        ],
        supplier: ("Leroy Merlin"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(appBar: AppBar()),
        backgroundColor: Color(backgroundColor),
        body: ListView(
          children: [
            for (var ShopInfo in ShopList)
              ShopProducts(
                  name: ShopInfo.name,
                  products: ShopInfo.products,
                  supplier: ShopInfo.supplier),
            ContactCard()
          ],
        ));
  }
}
