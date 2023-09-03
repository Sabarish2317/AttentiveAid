import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  @override
  Widget build(BuildContext context) {
    return /*pie chart stack*/ Stack(
      alignment: Alignment.center,
      children: [
        /*pie chart*/ PieChart(
          dataMap: dataMap,
          animationDuration: const Duration(milliseconds: 800),
          chartRadius: MediaQuery.of(context).size.width / 3,
          colorList: colorList,
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          ringStrokeWidth: 25.w,
          legendOptions: const LegendOptions(showLegends: false),
          chartValuesOptions: const ChartValuesOptions(
            showChartValues: false,
          ),
        ),
        /*percent stack xolumn*/ const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "95%",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'inter',
                  color: tdTxtBlk,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "GOOD",
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'inter',
                  color: tdGreen,
                  fontWeight: FontWeight.w700),
            ),
          ],
        )
      ],
    );
  }
}
