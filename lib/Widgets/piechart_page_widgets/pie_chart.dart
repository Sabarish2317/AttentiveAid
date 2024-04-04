import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';
import '../../Utilities/ui_consts/them_data.dart';
import '../global_widgets/add_height.dart';

class MyPieChart extends StatefulWidget {
  final double presentNum;

  const MyPieChart({super.key, required this.presentNum});

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  @override
  Widget build(BuildContext context) {
    return /*pie chart stack*/ Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            /*pie chart*/ Column(
              children: [
                PieChart(
                  dataMap: {
                    "p": widget.presentNum,
                    "A": 100 - widget.presentNum
                  },
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
              ],
            ),
            /*percent stack xolumn*/ Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      (widget.presentNum.truncate().toString()),
                      style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'inter',
                          color: tdTxtBlk,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      '%',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'inter',
                          color: tdTxtBlk,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  (widget.presentNum > 75) ? "GOOD" : "LOW",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'inter',
                      color: (widget.presentNum > 75) ? tdGreen : tdRed,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )
          ],
        ),
        Addheight(height: 9.h),
        Text(
          "Apr 23,2023",
          style: appTheme.textTheme.bodyMedium
              ?.copyWith(fontSize: 9.sp, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
