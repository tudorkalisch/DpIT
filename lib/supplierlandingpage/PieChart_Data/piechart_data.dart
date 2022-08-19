import 'package:flutter/material.dart';
import 'package:buildnow/constants/constants.dart' as Constants;


class PieData {
  static List<Data> data = [
    Data(name: 'Crestere', percent: 65, color: const Color(Constants.pieChartFillColor)),
    Data(name: '', percent: 35, color:  Colors.white),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({required this.name, required this.percent, required this.color});
}
