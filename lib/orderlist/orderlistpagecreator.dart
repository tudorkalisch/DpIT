// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../contactcard/contactcard.dart';
import '../orderlist/filterorderlist.dart';
import '../orderlist/orderlistelement.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);
  @override
  State<OrderList> createState() => Runner();
}

class Runner extends State<OrderList> {
  ProductOrdered product1 = ProductOrdered(
    name: 'Caramida 16x16 chestie, rosu, chestie chestie chestie ',
    price: '4.99',
    supplierName: 'Dedeman Leroy Merlin',
    nr: '12345678',
    day: '08',
    month: '02',
    year: '2002',
    total: '31.99',
    category: 'Solide',
  );
  ProductOrdered product2 = ProductOrdered(
    name: 'Ciment 16x16 chestie, rosu, chestie chestie chestie ',
    price: '3.99',
    supplierName: 'Dedeman',
    nr: '21345678',
    day: '09',
    month: '02',
    year: '2002',
    total: '41.99',
    category: 'Prafoase',
  );
  ProductOrdered product3 = ProductOrdered(
    name: 'Tigla 16x16 chestie, rosu, chestie chestie chestie ',
    price: '5.99',
    supplierName: 'Leroy Merlin',
    nr: '31245678',
    day: '10',
    month: '02',
    year: '2002',
    total: '51.99',
    category: 'Acoperis',
  );
  // void addProduct(list, product, product2) {
  //   list.add(product);
  //   list.add(product2);
  // }

  _onSortPrice(list) {
    setState(() {
      list.sort(
          (a, b) => double.parse(a.price).compareTo(double.parse(b.price)));
    });
  }

  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance
  //       .addPostFrameCallback((_) => addProduct(myList, product1, product2));
  // }

  @override
  Widget build(BuildContext context) {
    List<ProductOrdered> myList = [product1, product2, product3];
    // myList.sort((a, b) => a.price.compareTo(b.price));
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
                    _onSortPrice(myList);
                  },
                  child: Text('pret', style: TextStyle(fontSize: 16)),
                ),
                Padding(padding: EdgeInsets.only(left: 0)),
                TextButton(
                  onPressed: () {},
                  child: Text('timp', style: TextStyle(fontSize: 16)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('distribuitor', style: TextStyle(fontSize: 16)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('categorie', style: TextStyle(fontSize: 16)),
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
          child: SizedBox(
            child: myList[0],
          ),
        ),
        Center(
          child: SizedBox(
            child: myList[1],
          ),
        ),
        Center(
          child: SizedBox(
            child: myList[2],
          ),
        ),
      ]),
    );
  }
}
