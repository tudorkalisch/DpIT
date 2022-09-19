import 'package:buildnow/add_product_page/add_product_page.dart';
import 'package:buildnow/loginpage/loginpage.dart';
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

  Future initialization() async {
    preferences = await SharedPreferences.getInstance().then(((value) {
      loggedIn = value.getString('userInfo') != null;
      FlutterNativeSplash.remove();
      return value;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(preferences: preferences),
        debugShowCheckedModeBanner: false,
    );
  }
}
