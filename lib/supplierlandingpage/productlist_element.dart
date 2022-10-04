import 'package:buildnow/constants/constants.dart' as Constants;

import 'package:flutter/material.dart';



class productListElement extends StatelessWidget {
  late String product; //will be taken from database
  late int views; //will be taken from database
  late double profit; //will be taken from database
  late String image_path;
  productListElement(this.product, this.views, this.profit, this.image_path);
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
                  Image.asset(image_path,
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
