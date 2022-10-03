import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';
import '../contactcard/contactcard.dart';
import 'filtersreviews.dart';
import 'reviewelement.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListReviews extends StatefulWidget {
  List<ReviewStars> myList = [
    ReviewStars(
        4,
        4.4,
        'Tigla de calitate, arata foarte bine, rezistenta, nu foarte scumpa. Recomand.',
        'Tigla ceramica, teracota, 30 x 50 cm',
        'MaterialeDeTop',
        '2022-10-01',
        tiglaImagePath),
    ReviewStars(
        2,
        3,
        'Din pacate, pozele nu reflecta realitatea. Caramizile nu sunt de prea mare calitate, ma asteptam la mai mult. Nu recomand.',
        'Caramida plina 240 x 115 x 63 mm',
        'MaterialeIeftine',
        '2022-09-29',
        caramidajpg),
  ];
  ListReviews({Key? key}) : super(key: key);
  @override
  State<ListReviews> createState() => ReviewsPage();
}

class ReviewsPage extends State<ListReviews> {
  bool condition = true;

  String valueTime = 'Vechime (zile)';
  final vechime = ['Vechime (zile)', '7', '30', '180', '365'];

  String dateNow = ('2022-10-01');

  _verifyTime(date1, date2, value) {
    if (valueTime != 'Vechime (zile)') {
      DateTime date2compare = DateTime.parse(date2);
      date2compare = date2compare.subtract(Duration(days: int.parse(value)));
      DateTime date1compare = DateTime.parse(date1);
      if (date1compare.isAfter(date2compare)) {
        condition = true;
      } else {
        condition = false;
      }
    } else {
      condition = true;
    }
    return condition;
  }

  _verifyStarsGiven(name1, name2) {
    if (name2 != 'Stele acordate') {
      if (double.parse(name2) <= name1 && name1 < (double.parse(name2)) + 1) {
        condition = true;
      } else {
        condition = false;
      }
      ;
    } else if (name2 == 'Stele acordate') {
      condition = true;
    }
    return condition;
  }

  _verifyStarsProduct(name1, name2) {
    if (name2 != 'Stelele produsului') {
      if (double.parse(name2) < name1 && name1 < (double.parse(name2)) + 1) {
        condition = true;
      } else {
        condition = false;
      }
      ;
    } else if (name2 == 'Stelele produsului') {
      condition = true;
    }
    return condition;
  }

  _verifySupplier(name1, name2) {
    if (name1 == name2) {
      condition = true;
    } else if (name2 == 'Distribuitor') {
      condition = true;
    } else {
      condition = false;
    }
    return condition;
  }

  bool isReversedUserRating = false;
  bool isReversedProductRating = false;

  String valueStarsGiven = 'Stele acordate';
  String valueStarsProduct = 'Stelele produsului';
  final starsUser = ['Stele acordate', '1', '2', '3', '4', '5'];
  final starsProduct = ['Stelele produsului', '1', '2', '3', '4', '5'];
  String valueSupplier = 'Distribuitor';
  final distribuitor = [
    'Distribuitor',
    'Dedeman',
    'Leroy Merlin',
    'Brico Depot'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Container(
                width: 800,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(greyUsedInDivider)),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 6, 109, 114).withOpacity(0.15)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Sorteaza dupa: ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 70, 70, 70),
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(padding: EdgeInsets.only(left: 100)),
                  DropdownButton(
                    value: valueStarsGiven,
                    style: TextStyle(color: Colors.blue),
                    items: starsUser.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue1) {
                      setState(() {
                        valueStarsGiven = newValue1!;
                      });
                    },
                  ),
                  Padding(padding: EdgeInsets.only(left: 10, right: 20)),
                  DropdownButton(
                    value: valueStarsProduct,
                    style: TextStyle(color: Colors.blue),
                    items: starsProduct.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue2) {
                      setState(() {
                        valueStarsProduct = newValue2!;
                      });
                    },
                  ),
                  Padding(padding: EdgeInsets.only(left: 10, right: 20)),
                  DropdownButton(
                    value: valueTime,
                    style: TextStyle(color: Colors.blue),
                    items: vechime.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue2) {
                      setState(() {
                        valueTime = newValue2!;
                      });
                    },
                  ),
                  Padding(padding: EdgeInsets.only(left: 10, right: 20)),
                  DropdownButton(
                    value: valueSupplier,
                    style: TextStyle(color: Colors.blue),
                    items: distribuitor.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        valueSupplier = newValue!;
                      });
                    },
                  ),
                ]),
              ),
            ),
          ),
        ),
        Center(
          child: Visibility(
            visible: _verifyStarsGiven(
                    widget.myList[0].userRating, valueStarsGiven) &&
                _verifyStarsProduct(
                    widget.myList[0].productRating, valueStarsProduct) &&
                _verifySupplier(widget.myList[0].supplier, valueSupplier) &&
                _verifyTime(widget.myList[0].date, dateNow, valueTime),
            child: widget.myList[0],
          ),
        ),
        Center(
          child: Visibility(
            visible: _verifyStarsGiven(
                    widget.myList[1].userRating, valueStarsGiven) &&
                _verifyStarsProduct(
                    widget.myList[1].productRating, valueStarsProduct) &&
                _verifySupplier(widget.myList[1].supplier, valueSupplier) &&
                _verifyTime(widget.myList[1].date, dateNow, valueTime),
            child: widget.myList[1],
          ),
        ),
      ]),
    );
  }
}
