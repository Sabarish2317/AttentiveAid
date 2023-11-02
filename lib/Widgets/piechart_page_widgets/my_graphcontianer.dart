import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/ui_consts/them_data.dart';

class MyGraph extends StatefulWidget {
  const MyGraph({super.key});

  @override
  State<MyGraph> createState() => _MyGraphState();
}

class _MyGraphState extends State<MyGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 133.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromARGB(36, 0, 0, 0))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Remaining",
                style: appTheme.textTheme.bodyMedium?.copyWith(fontSize: 8.sp),
              ),
              Text(
                "HOURS",
                style: appTheme.textTheme.labelMedium
                    ?.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w700),
              ),
              Text(
                "30",
                style: appTheme.textTheme.labelLarge
                    ?.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w700),
              ),
              Text(
                "OVERALL",
                style: appTheme.textTheme.labelMedium?.copyWith(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w600,
                    color: tdGreen),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    linechart,
                    width: 58.h,
                    height: 48.w,
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
