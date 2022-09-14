import 'package:buildnow/landingpage/categorylist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/cupertino.dart';

import '../classes/favorite.dart';

import '../appbar/appbar.dart';

import '../classes/product.dart';
import '../constants/constants.dart';
import '../landingpage/contactcard.dart';

import './FavoriteProduct.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<FavoritePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavoritePage> {
  List<FavoriteProduct> FavoriteList = [
    FavoriteProduct(
        name: "Produse favorite",
        products: [
          Product(
              name: "Caramizi",
              price: "30",
              supplierName: "Leroy Merlin",
              subCategory: "Kebe",
              nrOfReviews: "7")
        ],
        favorite: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(appBar: AppBar()),
        backgroundColor: Color(backgroundColor),
        body: ListView(
          children: [
            for (var FavoriteInfo in FavoriteList)
              FavoriteProducts(
                  name: FavoriteInfo.name,
                  products: FavoriteInfo.products,
                  favorite: FavoriteInfo.favorite),
            ContactCard()
          ],
        ));
  }
}
