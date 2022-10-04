import 'package:buildnow/appbar/appbar.dart';
import 'package:buildnow/classes/product.dart';
import 'package:buildnow/product/product_card.dart';
import 'package:buildnow/supplierlandingpage/productlist_element.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart' as Constants;

class SearchPage extends StatefulWidget {
  List<Product> productList;

  String valueTime = 'Vechime (zile)';
  final vechime = ['Vechime (zile)', '7', '30', '180', '365'];

  String dateNow = ('2022-10-05');
  String valueCategory = 'Categorii';
  final categorii = [
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

  SearchPage({Key? key, required this.productList}) : super(key: key);

  @override
  State<SearchPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(appBar: AppBar()),
      body: Container(
        color: Color(Constants.backgroundColor),
        child: Column(
          children: [
            Container(
              color: Color(0xffE7E8F3),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'Sorteaza dupa:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 70, 70),
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Padding(
                        child: DropdownButton(
                        value: widget.valuePrice,
                        style: TextStyle(color: Colors.blue),
                        items: widget.preturi.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue2) {
                          setState(() {
                            widget.valuePrice = newValue2!;
                          });
                        },
                      ),
                        padding: EdgeInsets.only(right: 15)
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: DropdownButton(
                          value: widget.valueTime,
                          style: TextStyle(color: Colors.blue),
                          items: widget.vechime.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue2) {
                            setState(() {
                              widget.valueTime = newValue2!;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: DropdownButton(
                          value: widget.valueCategory,
                          style: TextStyle(color: Colors.blue),
                          items: widget.categorii.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue2) {
                            setState(() {
                              widget.valueCategory = newValue2!;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: DropdownButton(
                          value: widget.valueSupplier,
                          style: TextStyle(color: Colors.blue),
                          items: widget.distribuitor.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              widget.valueSupplier = newValue!;
                            });
                          },
                        ),
                      ),
                    ]),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(60),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                 maxCrossAxisExtent: 450,
                  mainAxisSpacing: 38,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 15
                  ),
                shrinkWrap: true,
                itemCount: widget.productList.length,
                itemBuilder: (BuildContext ctx, idx) {
                  return ProductCard(productName: widget.productList[idx].name, productPrice: widget.productList[idx].price, supplierName: widget.productList[idx].supplierName, productSubCategory: widget.productList[idx].subCategory, productNrOfReviews: widget.productList[idx].nrOfReviews);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}