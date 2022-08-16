import 'package:buildnow/supplierprofile/supplierprofilepage.dart';
import 'package:flutter/material.dart';

import 'loginpage/loginpage.dart';

import 'landingpage/landingpage.dart';

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
        home: SupplierProfilePage()
    );
  }
}
