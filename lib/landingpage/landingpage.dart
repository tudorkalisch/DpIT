import 'package:buildnow/landingpage/categorylist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  List<RecommendedCategoryClass> RecommendedCategoryList = [RecommendedCategoryClass(
    name: "Tencuieli",
    products: [Product(name: "Tencuiala", price: "25", supplierName: "Dedeman", subCategory: "Tencuieli ok", nrOfReviews: "5")]
  )];

  late SharedPreferences preferences;

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
            for (var RecommendedCategoryInfo in RecommendedCategoryList) RecommendedCategory(category: RecommendedCategoryInfo.name, products: RecommendedCategoryInfo.products),
            ContactCard()
          ],
        )
      ),
      );
  }
}
