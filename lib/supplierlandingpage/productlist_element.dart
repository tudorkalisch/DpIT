import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/material.dart';

class productListElement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => productListElementPageState();
}

class productListElementPageState extends State {
  String product = 'Caramizi'; //will be taken from database
  int views = 427; //will be taken from database
  int profit = 2539; //will be taken from database
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Column(children: [
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(Constants.bricksImagePath,
                      height: screenHeight * 0.15 * 0.45,
                      width: screenWidth * 0.15 * 0.45,
                      alignment: Alignment.centerLeft),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                          style: TextStyle(
                              fontSize: screenHeight * 0.15 * 0.20,
                              fontWeight: FontWeight.bold),
                          '$product'),
                      Text(
                          style:
                              TextStyle(fontSize: screenHeight * 0.15 * 0.15),
                          '$views de vizite')
                    ],
                  ),
                  Text(
                      style: TextStyle(fontSize: screenHeight * 0.15 * 0.20),
                      '$profit Ron')
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          )
        ]));
  }
}
