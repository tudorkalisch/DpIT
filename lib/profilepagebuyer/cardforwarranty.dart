import 'package:buildnow/constants/constants.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CardWarranty extends StatelessWidget {
  var name;
  var order;
  var warranty;
  var supplier;

  CardWarranty(this.name, this.order, this.warranty, this.supplier);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 250,
      width: 350,
      child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                this.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: EdgeInsets.only(bottom: 30, left: 70),
            child: Center(
              child: SizedBox(
                height: 180,
                width: 180,
                child: Image(image: AssetImage(tiglaImagePath)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 220, left: 250),
            child: Text('Garantie: ' + this.warranty + ' ani'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 155, left: 10),
            child: Container(
              height: 60,
              child: Align(
                  alignment: Alignment.bottomLeft, child: Text(this.order)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 220, left: 10),
            child: Text(this.supplier),
          )
        ],
      ),
    );
  }
}
