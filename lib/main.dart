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

 Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool loggedIn = prefs.containsKey('userToken');
  String token = prefs.getString('userToken') ?? '';
  runApp(MaterialApp(home: loggedIn ? LandingPage(token: token) : LoginPage()));
  FlutterNativeSplash.remove();
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
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
    );
  }
}
