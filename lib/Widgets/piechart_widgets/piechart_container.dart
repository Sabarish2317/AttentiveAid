import 'package:attentive_aid/Widgets/piechart_widgets/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/ui_consts/colors.dart';
import '../../Utilities/ui_consts/them_data.dart';

class PiecChartContainer extends StatefulWidget {
  const PiecChartContainer({super.key});

  @override
  State<PiecChartContainer> createState() => _PiecChartContainerState();
}

class _PiecChartContainerState extends State<PiecChartContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236.h,
      width: 353.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Percentage",
                        style: appTheme.textTheme.bodyLarge
                            ?.copyWith(color: tdLightBlack)),
                    Text('OVERALL',
                        style: appTheme.textTheme.labelLarge
                            ?.copyWith(fontSize: 18.sp, color: tdTlColor))
                  ],
                )
              ],
            ),
            const Divider(),
            const Row(
              children: [MyPieChart()],
            )
          ],
        ),
      ),
    );
  }
}
