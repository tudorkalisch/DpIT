// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../contactcard/contactcard.dart';
import '../orderlist/filterorderlist.dart';
import '../orderlist/orderlistelement.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);
  @override
  State<OrderList> createState() => Runner();
}

class Runner extends State<OrderList> {
  double ScreenWidth = 0;
  double ScreenHeight = 0;
  @override
  Widget build(BuildContext context) {
    ScreenHeight = MediaQuery.of(context).size.height;
    ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        Padding(padding: EdgeInsets.only(top: 30)),
        SizedBox(
          child: FilterOrderList(),
        ),
        Center(
          child: SizedBox(
            child: Stack(children: [Product()]),
          ),
        ),
        Center(
          child: SizedBox(
            child: Stack(children: [Product()]),
          ),
        ),
        Center(
          child: SizedBox(
            child: Stack(children: [Product()]),
          ),
        ),
      ]),
    );
  }
}
