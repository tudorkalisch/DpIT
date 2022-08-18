import 'package:buildnow/supplierlandingpage/PieChart_Data/pieChart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<PieChartSectionData> getSections(int touchedIndex) => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final isTouched = index == touchedIndex;
     // final double fontSize = isTouched ? 25 : 16;

      ///final double radius = isTouched ? 100 : 80;

      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: '',
        radius: 15,
        //titleStyle: TextStyle(
        //fontSize: fontSize,
        //fontWeight: FontWeight.bold,
        //color: const Color(0xffffffff),
        //),
      );

      return MapEntry(index, value);
    })
    .values
    .toList();
