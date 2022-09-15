import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class Product extends StatelessWidget {
  Product({Key? key}) : super(key: key);

  double ScreenWidth = 0;
  double ScreenHeight = 0;
  String orderNumber = '19475283';
  String thingOrdered =
      'Caramida 16x16 chestie, rosu, chestie chestie chestie ';
  String supplier = 'Dedeman Leroy Merlin';
  double price = 3.99;
  double total = 39.99;
  int orderDateDay = 07;
  int orderDateMonth = 11;
  int orderDateYear = 2020;
  String websiteLink =
      'https://www.dedeman.ro/ro/masca-baie-lavoar-slim-martplast-star-750-cu-usi-si-sertare-75-x-46-x-84-cm/p/3028442wd awdwasdw asdw';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 40),
        child: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Container(
                width: 1400,
                height: 195,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Nr comanda'
                              '\n'
                              '$orderNumber',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            height: 200,
                            width: 200,
                            child: Image(image: AssetImage(tiglaImagePath)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Stack(children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15, right: 50),
                          child: Container(
                              width: 700,
                              height: 40,
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(thingOrdered,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600))))),
                        ),
                        Row(children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 90, right: 0),
                                child: Container(
                                  width: 200,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('$price / bucata',
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, right: 0),
                                child: Container(
                                  width: 200,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(supplier,
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, right: 0),
                                child: Container(
                                  width: 200,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Total: $total',
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: VerticalDivider(
                              width: 20,
                              thickness: 2,
                              indent: 80,
                              endIndent: 20,
                              color: Color(blueishDivider).withOpacity(0.5),
                            ),
                          ),
                          Container(
                            width: 500,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 120, left: 20),
                                      child: Text(
                                          'Plasata pe: $orderDateDay/$orderDateMonth/$orderDateYear',
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 4, left: 20),
                                      child: Container(
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                              'Click aici pentru pagina produsului',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        child: SizedBox(
                          height: 220,
                          width: 220,
                          child: Image(image: AssetImage(buildNowLogo)),
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
