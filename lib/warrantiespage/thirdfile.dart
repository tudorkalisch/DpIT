import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../warrantiespage/warranties.dart';
import '../constants/constants.dart';

class ListWarranties extends StatefulWidget {
  List<Warranty> myList = [
    Warranty('Tigla ceramica, teracota, 30 x 50 cm', 'MaterialeDeTop',
        '2022-10-01', '3 ani', tiglaImagePath),
    Warranty('Caramida plina 240 x 115 x 63 mm', 'MaterialeIeftine',
        '2022-09-24', '1 an', caramidajpg),
    Warranty('Ciment 500, 25 kg', 'MaterialeDeTop', '2022-09-21', '6 luni',
        cementBag1),
  ];
  @override
  State<ListWarranties> createState() => ListWarranty();
}

class ListWarranty extends State<ListWarranties> {
  String valueWarranty = 'Durata';
  List<String> warranties = ['Durata', '6 luni', '1 an', '2 ani', '3 ani'];

  bool condition = false;

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

  _verifyWarranty(date1, value) {
    if (value != 'Durata') {
      if (date1 == value) {
        condition = true;
      } else {
        condition = false;
      }
    } else {
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

  String valueSupplier = 'Distribuitor';
  final distribuitor = [
    'Distribuitor',
    'Dedeman',
    'Leroy Merlin',
    'Brico Depot',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        Padding(
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
                Padding(padding: EdgeInsets.only(left: 70)),
                DropdownButton(
                  value: valueWarranty,
                  style: TextStyle(color: Colors.blue),
                  items: warranties.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue2) {
                    setState(() {
                      valueWarranty = newValue2!;
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
        Padding(padding: EdgeInsets.only(top: 30)),
        Center(
          child: Visibility(
            visible:
                _verifyTime(widget.myList[0].orderDate, dateNow, valueTime) &&
                    _verifyName(widget.myList[0].supplier, valueSupplier) &&
                    _verifyWarranty(widget.myList[0].warranty, valueWarranty),
            child: widget.myList[0],
          ),
        ),
        Center(
          child: Visibility(
            visible:
                _verifyTime(widget.myList[1].orderDate, dateNow, valueTime) &&
                    _verifyName(widget.myList[1].supplier, valueSupplier) &&
                    _verifyWarranty(widget.myList[1].warranty, valueWarranty),
            child: widget.myList[1],
          ),
        ),
        Center(
          child: Visibility(
            visible:
                _verifyTime(widget.myList[2].orderDate, dateNow, valueTime) &&
                    _verifyName(widget.myList[2].supplier, valueSupplier) &&
                    _verifyWarranty(widget.myList[2].warranty, valueWarranty),
            child: widget.myList[2],
          ),
        ),
      ]),
    );
  }
}
