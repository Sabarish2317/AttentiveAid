import 'package:attentive_aid/Widgets/global_widgets/add_height.dart';
import 'package:attentive_aid/Widgets/piechart_page_widgets/my_graphcontianer.dart';
import 'package:attentive_aid/Widgets/piechart_page_widgets/overall_details.dart';
import 'package:attentive_aid/Widgets/piechart_page_widgets/pie_chart.dart';
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
        height: 253.h,
        width: 353.w,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD0D3FC), width: 1.w),
          borderRadius: BorderRadius.circular(15.h),
          color: Colors.white,
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 12.h),
            child: Column(children: [
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
              const Addheight(height: 7),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /*piechart column*/
                    const MyPieChart(
                      presentNum: 75,
                    ),
                    /*widget ccolumn*/ SizedBox(
                      height: 136.h,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyGraph(),
                          MyOverallDetails(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])));
  }
}
