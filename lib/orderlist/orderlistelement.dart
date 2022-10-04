import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ProductOrdered extends StatelessWidget {
  var name;
  var price;
  var supplierName;
  var nr;
  var nrOfReviews;
  var date;
  var total;
  var category;
  var dateinteger;
  var imageProduct;

  ProductOrdered({
    this.name,
    this.price,
    this.supplierName,
    this.nr,
    this.date,
    this.total,
    this.category,
    this.dateinteger,
    this.imageProduct,
  });

  getSupplierName() {
    return this.supplierName;
  }

  getDateTime() {
    DateTime date = DateTime.parse(this.date);
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 40),
        child: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Container(
                width: 1340,
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
                                      '\n' +
                                  this.nr,
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            height: 200,
                            width: 200,
                            child: Image(image: AssetImage(this.imageProduct)),
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
                          padding: EdgeInsets.only(top: 15, left: 70),
                          child: Container(
                              width: 700,
                              height: 40,
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(this.name,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600))))),
                        ),
                        Row(children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 90, left: 50),
                                child: Container(
                                  width: 200,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(this.price + '/ bucata',
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 50),
                                child: Container(
                                  width: 200,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(this.supplierName,
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 50),
                                child: Container(
                                  width: 200,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Total: ' + this.total,
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
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 90),
                                      child: Text(
                                        'Categorie: ' + this.category,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 20),
                                      child: Text('Plasata pe: ' + this.date,
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
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 220,
                      width: 220,
                      child: Image(image: AssetImage(buildNowLogo)),
                    ),
                  ),
                ]))));
  }
}
