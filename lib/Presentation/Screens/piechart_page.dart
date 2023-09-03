import 'package:attentive_aid/Data/Widget_data_variables/global_student_data.dart';
import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Widgets/global_widgets/add_height.dart';
import 'package:attentive_aid/Widgets/piechart_widgets/piechart_container.dart';
import 'package:attentive_aid/Widgets/piechart_widgets/semester_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/ui_consts/them_data.dart';

class PieChartPage extends StatelessWidget {
  const PieChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return /*Main screen column*/ Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Addheight(height: 16.h),
        /*semselection row*/ Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("ATTENDANCE",
                  style: appTheme.textTheme.labelLarge
                      ?.copyWith(color: tdPureBlue)),
              Text(studentClass, style: appTheme.textTheme.bodyLarge)
            ]),
            const SemDropDownButton()
          ],
        ),
        Addheight(
          height: 14.h,
        ),
        /*piechart container*/ const PiecChartContainer()
      ],
    );
  }
}
