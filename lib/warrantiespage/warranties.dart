import 'package:flutter/material.dart';
import '../constants/constants.dart';

class Warranty extends StatelessWidget {
  var thingOrdered;
  var supplier;
  var orderDate;
  var warranty;

  Warranty(this.thingOrdered, this.supplier, this.orderDate, this.warranty);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Center(
        child: Container(
          width: 700,
          height: 231,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      this.thingOrdered,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 30),
                            child: Container(
                              width: 270,
                              child: Text(
                                this.supplier,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 30),
                            child: Container(
                              width: 270,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Cumparat pe: ' + this.orderDate,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 30),
                            child: Container(
                              width: 270,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Garantia produsului: ' +
                                      this.warranty +
                                      ' ani',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 70),
                      child: VerticalDivider(
                        thickness: 3,
                        indent: 45,
                        endIndent: 20,
                        color: Color(greyUsedInDivider),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Image(image: AssetImage(tiglaImagePath)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
