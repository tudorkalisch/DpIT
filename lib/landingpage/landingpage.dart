import 'package:buildnow/landingpage/categorylist.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/cupertino.dart';

import './recommendedcategory.dart';

import './categorybar.dart';

import './contactcard.dart';

import '../appbar/appbar.dart';

import '../classes/product.dart';
import '../classes/recommendedcategoryclass.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LandingPage> {
  late Future<List> products;

  Future<List> getProducts() async {
    var response = await Dio().get('jdbc:postgresql://localhost:5432/postgres');
    return response.data;
  }

  late Future category;

  Future<List> getCategory() async {
    var response = await Dio().get('jdbc:postgresql://localhost:5432/postgres');
    return response.data;
  }

  @override
  void initState() {
    products = getProducts();
    category = getCategory();
    super.initState();
  }

  List<RecommendedCategoryClass> RecommendedCategoryList = [
    RecommendedCategoryClass(name: category, products: products)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(appBar: AppBar()),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(Constants.backgroundColor),
          child: ListView(
            children: [
              CategoryBar(),
              for (var RecommendedCategoryInfo in RecommendedCategoryList)
                RecommendedCategory(
                    category: RecommendedCategoryInfo.name,
                    products: RecommendedCategoryInfo.products),
              ContactCard()
            ],
          )),
    );
  }
}
