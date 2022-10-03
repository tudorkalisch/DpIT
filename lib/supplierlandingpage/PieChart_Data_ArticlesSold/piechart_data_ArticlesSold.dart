import 'dart:math';

import 'package:flutter/material.dart';
import 'package:buildnow/constants/constants.dart' as Constants;

class Data {
  late final String name;

  late final double percent;

  late final Color color;


  Data({required this.name, required this.percent, required this.color});
}


class PieData {
  static var rng =  new Random();
  static double percent = rng.nextInt(100).toDouble();
  static bool isGrowth = percent > 50;
  static Color color = Color(Constants.pieChartFillColor);
  static Data supplier_data = Data(name: 'Crestere', percent: percent, color: color);
  static List<Data> data = [
    Data(name: supplier_data.name, percent: supplier_data.percent, color: supplier_data.color),
    Data(name: '', percent: 100 - supplier_data.percent, color:  Colors.white),
  ];
}


