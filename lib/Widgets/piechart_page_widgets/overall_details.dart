import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/ui_consts/colors.dart';
import '../../Utilities/ui_consts/them_data.dart';

class MyOverallDetails extends StatelessWidget {
  const MyOverallDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 163.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "630",
                  style: appTheme.textTheme.labelLarge?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: tdPureBlue),
                ),
                Text(
                  "TOTAL\nHOURS",
                  textAlign: TextAlign.center,
                  style: appTheme.textTheme.labelMedium
                      ?.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "60",
                  style: appTheme.textTheme.labelLarge?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: tdRed),
                ),
                Text(
                  "ABSENT\nHOURS",
                  textAlign: TextAlign.center,
                  style: appTheme.textTheme.labelMedium
                      ?.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ));
  }
}
