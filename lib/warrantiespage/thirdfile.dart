import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../warrantiespage/warranties.dart';
import '../constants/constants.dart';

class ListWarranties extends StatefulWidget {
  const ListWarranties({Key? key}) : super(key: key);
  @override
  State<ListWarranties> createState() => ListWarranty();
}

class ListWarranty extends State<ListWarranties> {
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
          child: Warranty('Caramida 16x16, maro, plastic, 7x12, lala',
              'Dedeman', '08-12-2022', '3'),
        ),
        SizedBox(
          child: Warranty('Caramida 16x16, maro, plastic, 7x12, lala',
              'Dedeman', '08-12-2022', '3'),
        ),
        SizedBox(
          child: Warranty('Caramida 16x16, maro, plastic, 7x12, lala',
              'Dedeman', '08-12-2022', '3'),
        ),
      ]),
    );
  }
}
