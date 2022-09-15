import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:buildnow/supplierlandingpage/piechart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:buildnow/supplierlandingpage/BarChart/barchart_improved.dart';
import 'package:buildnow/constants/constants.dart' as Constants;
import 'productlist_element.dart';
import 'package:buildnow/appbar/appbar.dart';

class SupplierLanding extends StatefulWidget {
  SupplierLanding({Key? key}) : super(key: key);

  @override
  _SupplierLanding createState() => _SupplierLanding();
}

class _SupplierLanding extends State<SupplierLanding> {
  String dropdownValueforIncome = 'Astazi';
  String dropdownValueforSales = 'Ultima ora';
  String dropdownValueforSoldArticle = 'Ultima luna';
  final int income = 12345;
  final int incomeSales = 123;
  final int soldArticles = 12;
  final int visitors = 100;
  final int clients = 250;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: DefaultAppBar(appBar: AppBar()),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
                Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: const Color(Constants.topContainersBlue).withOpacity(0.35)),
                  margin: EdgeInsets.only(top: screenHeight * 0.04),
                  height: screenHeight * 0.13,
                  width: screenWidth * 0.39,
                  alignment: Alignment.topLeft,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                              child: Text(
                                'Vizitatori',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    
                                    fontSize: screenHeight * 0.13 * 0.2),
                              ),
                            ),
                             Padding(
                          padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                          child: Text(
                            '$visitors',
                            
                            style: TextStyle(
                                color: Colors.black,
                                
                                fontSize: screenHeight * 0.13 * 0.2),
                          ),
                        ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                          width: screenWidth * 0.23,
                          height: screenHeight * 0.13,
                          child: LineChart(
                            LineChartData(
                                borderData: FlBorderData(show: false),
                                gridData: FlGridData(show: false),
                                titlesData: FlTitlesData(show: false),
                                lineBarsData: [
                                  LineChartBarData(
                                      color: const Color(Constants.lineChartRed),
                                      spots: [
                                        const FlSpot(0, 1),
                                        const FlSpot(1, 4),
                                        const FlSpot(3, 6),
                                        const FlSpot(5, 12),
                                        const FlSpot(7, 20),
                                        const FlSpot(9, 14),
                                        const FlSpot(11, 12),
                                        const FlSpot(13, 21),
                                        const FlSpot(15, 25),
                                        const FlSpot(17, 26),
                                        const FlSpot(19, 22),
                                        const FlSpot(21, 20),
                                        const FlSpot(22, 34),
                                      ])
                                ]),
                          ),
                        ),

                        ///LineChart -- need data
                      ]),
                ),
                Container(
                    decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: const Color(Constants.topContainersBlue).withOpacity(0.35)),
                    margin: EdgeInsets.only(top: screenHeight * 0.04),
                    height: screenHeight * 0.13,
                    width: screenWidth * 0.39,
                    alignment: Alignment.topLeft,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                                child: Text(
                                  'Clienti',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      
                                      fontSize: screenHeight * 0.13 * 0.2),
                                ),
                              ),
                              Padding(
                            padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
                            child: Text(
                              '$clients',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  
                                  fontSize: screenHeight * 0.13 * 0.2),
                            ),
                          ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                            width: screenWidth * 0.25,
                            height: screenHeight * 0.13,
                            child: LineChart(
                              LineChartData(
                                  borderData: FlBorderData(show: false),
                                  gridData: FlGridData(show: false),
                                  titlesData: FlTitlesData(show: false),
                                  lineBarsData: [
                                    LineChartBarData(
                                        color: const Color(Constants.lineChartRed),
                                        spots: [
                                          const FlSpot(0, 1),
                                          const FlSpot(1, 4),
                                          const FlSpot(3, 6),
                                          const FlSpot(5, 12),
                                          const FlSpot(7, 20),
                                          const FlSpot(9, 14),
                                          const FlSpot(11, 12),
                                          const FlSpot(13, 21),
                                          const FlSpot(15, 25),
                                          const FlSpot(17, 26),
                                          const FlSpot(19, 22),
                                          const FlSpot(21, 20),
                                          const FlSpot(22, 10),
                                        ])
                                  ]),
                            ),
                          ),

                          ///LineChart -- need data
                        ]))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: const Color(Constants.middleContainerOrange).withOpacity(0.75)),
                  height: screenHeight * 0.15,
                  width: screenWidth * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    style: TextStyle(
                                        fontSize: screenHeight * 0.15 * 0.165),
                                    'Venit'),
                                DropdownButton(
                                    isExpanded: false,
                                    hint: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                const Color.fromARGB(255, 10, 10, 10),
                                            fontSize:
                                                screenHeight * 0.15 * 0.15),
                                        dropdownValueforIncome),
                                    icon: const Icon(Icons.list_rounded),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValueforIncome = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'Astazi',
                                      'Ultima saptamana',
                                      'Ultima luna'
                                    ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                        return DropdownMenuItem<String>(
                                            value: value, child: Text(value));
                                      },
                                    ).toList()),
                                Text(
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontSize: screenHeight * 0.15 * 0.11),
                                    income.toString() + ' Ron')
                              ],
                            ),

                            PieChartPage()

                            ///PieChart - need data
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    style: TextStyle(
                                        fontSize: screenHeight * 0.15 * 0.165),
                                    'Vanzari'),
                                DropdownButton(
                                    hint: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                const Color.fromARGB(255, 10, 10, 10),
                                            
                                            fontSize:
                                                screenHeight * 0.15 * 0.15),
                                        dropdownValueforSales),
                                    icon: const Icon(Icons.list_rounded),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValueforSales = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'Ultima ora',
                                      'Astazi',
                                      'Ultima saptamana',
                                      'Ultima luna'
                                    ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                        return DropdownMenuItem<String>(
                                            value: value, child: Text(value));
                                      },
                                    ).toList()),
                                Text(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontSize: screenHeight * 0.15 * 0.11),
                                  incomeSales.toString() + ' Ron',
                                )
                              ],
                            ),
                            PieChartPage()

                            ///PieChart -- need data
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    style: TextStyle(
                                        fontSize: screenHeight * 0.15 * 0.165),
                                    'Articole Vandute'),
                                DropdownButton(
                                    hint: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                const Color.fromARGB(255, 10, 10, 10),
                                            
                                            fontSize:
                                                screenHeight * 0.15 * 0.15),
                                        dropdownValueforSoldArticle),
                                    icon: const Icon(Icons.list_rounded),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValueforSoldArticle = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'Ultima ora',
                                      'Astazi',
                                      'Ultima saptamana',
                                      'Ultima luna'
                                    ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                        return DropdownMenuItem<String>(
                                            value: value, child: Text(value));
                                      },
                                    ).toList()),
                                Text(
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontSize: screenHeight * 0.15 * 0.11),
                                    soldArticles.toString())
                              ],
                            ),
                            PieChartPage()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  height: screenHeight * 0.36,
                  width: screenWidth * 0.39,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 7, 20, 0),
                            child: Text(
                                style: TextStyle(
                                    color: Colors.black,
                                    
                                    fontSize: screenHeight * 0.15 * 0.20),
                                'Produse vandute'),
                          )),
                      BarChartImproved()

                      ///BarChart -- need data
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  height: screenHeight * 0.36,
                  width: screenWidth * 0.39,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 7, 20, 0),
                              child: Text(
                                  style: TextStyle(
                                      fontSize: screenHeight * 0.15 * 0.20),
                                  'Cele mai vizitate luna aceasta'),
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: screenHeight * 0.1 * 0.2,
                                    color: Colors.purple),
                                'Afisati-le pe toate'),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
                      child: Container(
                        height: screenHeight * 0.28,
                        width: screenWidth * 0.35,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: [
                            productListElement(),
                            productListElement(),
                            productListElement(),
                            productListElement(),
                            productListElement()

                          ]
                            
                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Constants.blueGradientPath),
                        fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 40,
                          left: 25,
                          child: Text(
                            "Contact:",
                            style: TextStyle(
                                fontSize: 38,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                      Positioned(
                          top: 100,
                          left: 28,
                          child: Icon(
                            CupertinoIcons.envelope,
                            size: 34,
                            color: Colors.white,
                          )),
                      Positioned(
                          top: 100,
                          left: 76,
                          child: Text(
                            "buildnowdpit@protonmail.com",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                )),
          )
        ]),
      ),
    );
  }
}
