
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartExist extends StatefulWidget {
  final List<Color> availableColors = const [
    Colors.yellowAccent,
    Colors.orangeAccent,
  ];


  @override
  State<StatefulWidget> createState() => BarChartState();
}

class BarChartState extends State<BarChartExist> {
  late int showingToolTip;

  @override
  void initState() {
    showingToolTip = -1;
    super.initState();
  }

  BarChartGroupData generateBarChartGroupData(int x, int y) {
    return BarChartGroupData(
        x: x,
        showingTooltipIndicators: showingToolTip == x ? [0] : [],
        barRods: [
          BarChartRodData(toY: y.toDouble()),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
          child: BarChart(BarChartData(
              barGroups: [
            generateBarChartGroupData(1, 2),
            generateBarChartGroupData(3, 4),
            generateBarChartGroupData(5, 6),
            generateBarChartGroupData(1, 2),
            generateBarChartGroupData(3, 4),
            generateBarChartGroupData(5, 6)
          ],
              barTouchData: BarTouchData(
                  enabled: true,
                  handleBuiltInTouches: true,
                  touchCallback: (event, response) {
                    if (response != null &&
                        response.spot != null &&
                        event is FlTouchEvent) {
                      setState(() {
                        final x = response.spot!.touchedBarGroup.x;
                        final isShowing = showingToolTip == x;
                        if (isShowing) {
                          showingToolTip = -1;
                        } else {
                          showingToolTip = x;
                        }
                      });
                    }
                  },
                  mouseCursorResolver: (event, response) {
                    return response == null || response.spot == null
                        ? MouseCursor.defer
                        : SystemMouseCursors.click;
                  })))),
    );
  }
}
