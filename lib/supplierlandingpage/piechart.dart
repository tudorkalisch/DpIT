import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:buildnow/supplierlandingpage/PieChart_Data/piechart_data.dart';
import 'package:buildnow/supplierlandingpage/PieChart_Data/piechart_sectiondata.dart';
import 'package:flutter/material.dart';

class PieChartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartPageState();
}

class PieChartPageState extends State {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) => Container(
        child: Row(
            
            children: [
              SizedBox(width: 80),
              Stack(alignment: AlignmentDirectional.center, children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 15, 25, 15),
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 25, maxWidth: 25),
                    //decoration: BoxDecoration(shape: BoxShape.circle),
                    child: PieChart(
                      PieChartData(
                        borderData: FlBorderData(show: false),
                        startDegreeOffset: 270,
                        sectionsSpace: 0,
                        centerSpaceRadius: 50,
                        centerSpaceColor: Colors.white,
                        sections: getSections(touchedIndex),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Center(child: Text(style: TextStyle(fontSize: 20), '65%')),
                ),
              ]),
            ]),
      );
}
