import 'package:fl_chart/fl_chart.dart';
import 'package:dev_thingz_hu/constants.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> pieChartSectionDatas = [
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 15,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              startDegreeOffset: -90,
              sections: pieChartSectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: bgColor,
                      fontWeight: FontWeight.w600,
                      height: .5),
                ),
                Text(
                  "of 128Gb",
                  style: TextStyle(
                    color: bgColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
