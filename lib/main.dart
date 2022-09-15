import 'package:buildnow/add_product_page/add_product_page.dart';
import 'package:buildnow/loginpage/loginpage.dart';
import 'package:buildnow/profilepagebuyer/profilepagebuyer.dart';
import 'package:buildnow/register_supplier/supplier_registerpage.dart';
import 'package:buildnow/registerpage/registerpage_form.dart';
import 'package:buildnow/productpage/productpage.dart';
import 'package:flutter/material.dart';

import 'registerpage/registerpage.dart';
import 'add_product_page/add_product_page.dart';
import 'landingpage/landingpage.dart';

import 'package:buildnow/supplierlandingpage/supplierlandingpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
    );
  }
}
