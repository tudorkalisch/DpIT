import 'package:buildnow/add_product_page/add_product_page.dart';
import 'package:buildnow/loginpage/loginpage.dart';
import 'package:buildnow/profilepagebuyer/profilepagebuyer.dart';
import 'package:buildnow/register_supplier/supplier_registerpage.dart';
import 'package:buildnow/registerpage/registerpage_form.dart';
import 'package:buildnow/productpage/productpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'registerpage/registerpage.dart';
import 'add_product_page/add_product_page.dart';
import 'landingpage/landingpage.dart';

import 'package:buildnow/supplierlandingpage/supplierlandingpage.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
  late var loggedIn;

  late SharedPreferences preferences;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    SharedPreferences.setMockInitialValues({});
    preferences = await SharedPreferences.getInstance();
    loggedIn = preferences.containsKey("userInfo");
    if ( !loggedIn ) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LandingPage()), (route) => false);
    }
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
    );
  }
}
