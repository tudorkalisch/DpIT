import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/cupertino.dart';

import './recommendedcategory.dart';

import './categorybar.dart';

import './contactcard.dart';

import './adbar.dart';

import '../appbar/appbar.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(appBar: AppBar()),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xfff2f2f7),
        child: ListView(
          children: [
            CategoryBar(),
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
