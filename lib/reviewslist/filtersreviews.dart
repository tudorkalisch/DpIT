import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class FilterReviewList extends StatelessWidget {
  FilterReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Center(
        child: Container(
          width: 800,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Color(greyUsedInDivider)),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color.fromARGB(255, 6, 109, 114).withOpacity(0.15)),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Sorteaza dupa: ',
              style: TextStyle(
                  color: Color.fromARGB(255, 70, 70, 70),
                  fontWeight: FontWeight.w600),
            ),
            Padding(padding: EdgeInsets.only(left: 100)),
            TextButton(
              onPressed: () {},
              child: Text('stele acordate', style: TextStyle(fontSize: 16)),
            ),
            Padding(padding: EdgeInsets.only(left: 10, right: 20)),
            TextButton(
              onPressed: () {},
              child: Text('stelele produsului', style: TextStyle(fontSize: 16)),
            ),
            Padding(padding: EdgeInsets.only(left: 10, right: 20)),
            TextButton(
              onPressed: () {},
              child: Text('timp', style: TextStyle(fontSize: 16)),
            ),
            Padding(padding: EdgeInsets.only(left: 10, right: 20)),
            TextButton(
              onPressed: () {},
              child: Text('distribuitor', style: TextStyle(fontSize: 16)),
            ),
          ]),
        ),
      ),
    );
  }
}
