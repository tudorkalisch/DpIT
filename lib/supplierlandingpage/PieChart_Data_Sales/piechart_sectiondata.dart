import 'package:fl_chart/fl_chart.dart';
import 'package:buildnow/supplierlandingpage/PieChart_Data_Sales/piechart_dataSales.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<PieChartSectionData> getSections(int touchedIndex) => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final isTouched = index == touchedIndex;
     

      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: '',
        radius: 15,
        
      );

      return MapEntry(index, value);
    })
    .values
    .toList();
