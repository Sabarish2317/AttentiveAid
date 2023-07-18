import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/them_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardCard extends StatefulWidget {
  final Color endColor;
  final String header1;
  final String header2;
  final String body1;
  final String icon;
  const DashboardCard(
      {super.key,
      required this.endColor,
      required this.header1,
      required this.header2,
      required this.body1,
      required this.icon});

  @override
  State<DashboardCard> createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 168.w,
        height: 100.h,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(-1, -1),
            end: const Alignment(1, 1),
            colors: [
              const Color(0xff8D8CF5),
              widget.endColor.withOpacity(0.70)
            ],
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                width: 0.50, color: Color.fromRGBO(160, 159, 243, 0.15)),
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.header1,
                    style: appTheme.textTheme.labelLarge?.copyWith(
                        color: tdBgColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                  Text(
                    widget.header2,
                    style: appTheme.textTheme.labelLarge?.copyWith(
                        color: tdBgColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                  Text(
                    widget.body1,
                    style: appTheme.textTheme.labelLarge?.copyWith(
                        color: tdBgColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.icon,
                    width: 30.w,
                    height: 30.w,
                    color: tdTxtBlk,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
