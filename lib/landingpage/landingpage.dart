import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/cupertino.dart';

import './recommendedcategory.dart';

import './categorybar.dart';

import './contactcard.dart';

import './adbar.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Constants.blueGradientPath),
                  fit: BoxFit.fill
        ))),
        title: Container(
              child: Row(
        children: [
          Image.asset(
            Constants.blueLogoNoBgPath,
            scale: 6,
          ),
          Padding(
              padding: EdgeInsets.only(left: 120),
              child: Container(
                height: 37,
                width: 450,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(CupertinoIcons.search),
                  ),
                  style: TextStyle(fontSize: 15),
                )),
              )),
          ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: IconButton(
              icon: Icon(
                Icons.home_outlined
              ),
              onPressed: () {},
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: IconButton(
              icon: Icon(
                Icons.local_shipping_outlined,
              ),
              onPressed: () {},
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 45),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.heart,
              ),
              onPressed: () {},
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 60, bottom: 8, top: 8),
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Colors.white
              ),
              child: TextButton(
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                onPressed: () {}
              )
            )
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xfff2f2f7),
        child: ListView(
          children: [
            CategoryBar(),
            AdBar(),
            ReccomendedCategory(category: "Tencuieli"),
            ReccomendedCategory(category: "Tencuieli"),
            ReccomendedCategory(category: "Tencuieli"),
            ContactCard()
          ],
        )
      ),
      );
  }
}
