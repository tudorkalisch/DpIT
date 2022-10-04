import 'package:buildnow/favoritepage/card.dart';
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

import './favoriteproduct.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<FavoritePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavoritePage> {
  List<Product> FavoriteList = [
    /*FavoriteProduct(
        name: "Produse favorite",
        products: [
          Product(
              name: "Caramizi",
              price: "30",
              supplierName: "Leroy Merlin",
              subCategory: "Kebe",
              nrOfReviews: "7")
        ],
        favorite: true)*/
    Product(
        name: "Caramizi",
        price: "10",
        supplierName: "Leroy Merlin",
        subCategory: "Kebe",
        nrOfReviews: "5"),
    Product(
        name: "Caramizi",
        price: "10",
        supplierName: "Leroy Merlin",
        subCategory: "Kebe",
        nrOfReviews: "5"),
    Product(
        name: "Caramizi",
        price: "10",
        supplierName: "Leroy Merlin",
        subCategory: "Kebe",
        nrOfReviews: "5"),
    Product(
        name: "Caramizi",
        price: "10",
        supplierName: "Leroy Merlin",
        subCategory: "Kebe",
        nrOfReviews: "5"),
    Product(
        name: "Caramizi",
        price: "10",
        supplierName: "Leroy Merlin",
        subCategory: "Kebe",
        nrOfReviews: "5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(appBar: AppBar()),
        backgroundColor: Color(backgroundColor),
        body: ListView(
          padding: EdgeInsets.all(5),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: Text(
                "Produse Favorite",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Expanded(child: ProductCardF(productsList: FavoriteList)),
            const ContactCard()
          ],
        ));
  }
}
