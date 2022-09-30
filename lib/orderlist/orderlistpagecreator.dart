// ignore_for_file: prefer_const_constructors

import 'package:buildnow/classes/product.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../contactcard/contactcard.dart';
import '../orderlist/filterorderlist.dart';
import '../orderlist/orderlistelement.dart';

class OrderList extends StatefulWidget {
  List<ProductOrdered> myList = [
    ProductOrdered(
      name: 'Tigla 16x16 chestie, rosu, chestie chestie chestie ',
      price: '5.99',
      supplierName: 'Leroy Merlin',
      nr: '31245678',
      date: '11 - 07 - 2022',
      total: '51.99',
      category: 'Acoperis',
    ),
    ProductOrdered(
      name: 'Ciment 16x16 chestie, rosu, chestie chestie chestie ',
      price: '3.99',
      supplierName: 'Dedeman',
      nr: '21345678',
      date: '17 - 03 - 2021',
      total: '41.99',
      category: 'Prafoase',
    ),
    ProductOrdered(
      name: 'Tigla 16x16 chestie, rosu, chestie chestie chestie ',
      price: '5.99',
      supplierName: 'Brico Depot',
      nr: '31245678',
      date: '09 - 10 - 2022',
      total: '51.99',
      category: 'Acoperis',
    ),
  ];
  OrderList({Key? key}) : super(key: key);
  @override
  State<OrderList> createState() => Runner();
}

class Runner extends State<OrderList> {
  _onSortPrice(list) {
    setState(() {
      widget.myList.sort(
          (a, b) => double.parse(a.total).compareTo(double.parse(b.total)));
    });
  }

  _onSortPriceReversed(list) {
    setState(() {
      widget.myList.sort(
          (a, b) => double.parse(b.total).compareTo(double.parse(a.total)));
    });
  }

  _onSortSupplier(list) {
    setState(() {
      widget.myList.sort((a, b) => a.supplierName.compareTo(b.supplierName));
    });
  }

  _onSortSupplierReversed(list) {
    setState(() {
      widget.myList.sort((a, b) => b.supplierName.compareTo(a.supplierName));
    });
  }

  _onSortCategory(list) {
    setState(() {
      widget.myList.sort((a, b) => a.category.compareTo(b.category));
    });
  }

  _onSortCategoryReversed(list) {
    setState(() {
      widget.myList.sort((a, b) => b.category.compareTo(a.category));
    });
  }

  _onSortSupplier2(list, value) {
    setState(() {
      for (var i = 0; i < 2; i++) {
        if (widget.myList[i].supplierName != value) {}
      }
    });
  }

  bool reverseTime = false;
  bool reverseSupplier = false;
  bool reverseCategory = false;
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String valueSupplier = 'Distribuitor';
  final distribuitor = [
    'Distribuitor',
    'Dedeman',
    'Leroy Merlin',
    'Brico Depot'
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
                Padding(padding: EdgeInsets.only(left: 100)),
                TextButton(
                  onPressed: () {
                    if (reverseTime == false) {
                      _onSortPrice(widget.myList);
                      reverseTime = true;
                    } else {
                      _onSortPriceReversed(widget.myList);
                      reverseTime = false;
                    }
                  },
                  child: Text('pret', style: TextStyle(fontSize: 16)),
                ),
                TextButton(
                  onPressed: () {
                    if (reverseCategory == false) {
                      _onSortCategory(widget.myList);
                      reverseCategory = true;
                    } else {
                      _onSortCategoryReversed(widget.myList);
                      reverseCategory = false;
                    }
                  },
                  child: Text('categorie', style: TextStyle(fontSize: 16)),
                ),
                TextButton(
                  onPressed: () {
                    if (reverseSupplier == false) {
                      _onSortSupplier(widget.myList);
                      reverseSupplier = true;
                    } else {
                      _onSortSupplierReversed(widget.myList);
                      reverseSupplier = false;
                    }
                  },
                  child: Text('timp', style: TextStyle(fontSize: 16)),
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
        Center(
          child: Visibility(
            child: widget.myList[0],
          ),
        ),
        Center(
          child: Visibility(
            child: widget.myList[1],
          ),
        ),
        Center(
          child: Visibility(
            child: widget.myList[2],
          ),
        ),
      ]),
    );
  }
}
