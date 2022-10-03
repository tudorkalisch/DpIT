// ignore_for_file: prefer_const_constructors

import 'package:buildnow/classes/product.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../contactcard/contactcard.dart';
import '../orderlist/filterorderlist.dart';
import '../orderlist/orderlistelement.dart';

class OrderListReturns extends StatefulWidget {
  List<ProductOrdered> myList = [
    ProductOrdered(
      name: 'Caramida plina 240 x 115 x 63 mm',
      price: '3.99',
      supplierName: 'MaterialeIeftine',
      nr: '31245678',
      date: '2022-09-26',
      total: '399',
      category: 'Zidarie',
      imageProduct: caramidajpg,
    ),
    ProductOrdered(
      name: 'Ciment 500, 25 kg',
      price: '28.80',
      supplierName: 'MaterialeDeTop',
      nr: '21345678',
      date: '2022-09-24',
      total: '28.80',
      category: 'Prafoase',
      imageProduct: cementBag1,
    ),
  ];
  OrderListReturns({Key? key}) : super(key: key);
  @override
  State<OrderListReturns> createState() => Runner2();
}

class Runner2 extends State<OrderListReturns> {
  bool condition = false;

  String valueTime = 'Vechime (zile)';
  final vechime = ['Vechime (zile)', '7', '30', '180', '365'];

  String dateNow = ('2022-10-05');

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

  _verifyPrice(price1, price2) {
    bool condition = false;
    if (price2 != 'Pret') {
      if (price2 == '0-10' &&
          double.parse(price1) > 0 &&
          double.parse(price1) <= 10) {
        condition = true;
      } else if (price2 == '10-50' &&
          double.parse(price1) > 10 &&
          double.parse(price1) <= 50) {
        condition = true;
      } else if (price2 == '50-100' &&
          double.parse(price1) > 50 &&
          double.parse(price1) <= 100) {
        condition = true;
      } else if (price2 == '100-500' &&
          double.parse(price1) > 100 &&
          double.parse(price1) <= 500) {
        condition = true;
      } else if (price2 == '500-1000' &&
          double.parse(price1) > 500 &&
          double.parse(price1) <= 1000) {
        condition = true;
      } else if (price2 == '1000-2000' &&
          double.parse(price1) > 1000 &&
          double.parse(price1) <= 2000) {
        condition = true;
      } else if (price2 == '2000+' && double.parse(price1) > 2000) {
        condition = true;
      }
    } else if (price2 == 'Pret') {
      condition = true;
    }
    return condition;
  }

  _verifyName(name1, name2) {
    if (name1 == name2) {
      condition = true;
    } else if (name2 == 'Distribuitor') {
      condition = true;
    } else {
      condition = false;
    }
    return condition;
  }

  _verifyCategory(name1, name2) {
    if (name1 == name2) {
      condition = true;
    } else if (name2 == 'Categorii') {
      condition = true;
    } else {
      condition = false;
    }
    return condition;
  }

  String valueCategory = 'Categorii';
  var categorii = [
    'Categorii',
    'Prafoase',
    'Acoperis',
    'Zidarie',
    'Metalurgice'
  ];

  String valueSupplier = 'Distribuitor';
  final distribuitor = [
    'Distribuitor',
    'ConstructiiUsoare',
    'MaterialeDeTop',
    'MaterialeIeftine',
  ];

  String valuePrice = 'Pret';
  final preturi = [
    'Pret',
    '0-10',
    '10-50',
    '50-100',
    '100-500',
    '500-1000',
    '1000-2000',
    '2000+'
  ];

  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance
  //       .addPostFrameCallback((_) => addProduct(myList, product1, product2));
  // }

  @override
  Widget build(BuildContext context) {
    bool isvisible = false;
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Center(
            child: Container(
              width: 600,
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
                Padding(padding: EdgeInsets.only(left: 50)),
                DropdownButton(
                  value: valuePrice,
                  style: TextStyle(color: Colors.blue),
                  items: preturi.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue2) {
                    setState(() {
                      valuePrice = newValue2!;
                    });
                  },
                ),
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
                DropdownButton(
                  value: valueCategory,
                  style: TextStyle(color: Colors.blue),
                  items: categorii.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue2) {
                    setState(() {
                      valueCategory = newValue2!;
                    });
                  },
                ),
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
        // Padding(padding: EdgeInsets.only(top: 30)),
        // SizedBox(
        //   child: FilterOrderList(),
        // ),
        // Center(
        //     child: myList[0].getSupplierName == valueSupplier
        //         ? widget.myList[0]
        //         : Container()),
        Center(
          child: Visibility(
            visible:
                _verifyCategory(widget.myList[0].category, valueCategory) &&
                    _verifyName(widget.myList[0].supplierName, valueSupplier) &&
                    _verifyTime(widget.myList[0].date, dateNow, valueTime) &&
                    _verifyPrice(widget.myList[0].total, valuePrice),
            child: widget.myList[0],
          ),
        ),
        Center(
          child: Visibility(
            visible:
                _verifyCategory(widget.myList[1].category, valueCategory) &&
                    _verifyName(widget.myList[1].supplierName, valueSupplier) &&
                    _verifyTime(widget.myList[1].date, dateNow, valueTime) &&
                    _verifyPrice(widget.myList[1].total, valuePrice),
            child: widget.myList[1],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 40)),
      ]),
    );
  }
}
