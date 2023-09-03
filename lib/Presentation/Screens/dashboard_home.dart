// ignore_for_file: unused_import

import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:attentive_aid/Widgets/dashboard_widgets/dashboard_card.dart';
import 'package:attentive_aid/Widgets/global_widgets/gradient_stack.dart';
import 'package:attentive_aid/Widgets/global_widgets/add_height.dart';
import 'package:attentive_aid/Widgets/dashboard_widgets/my_expansiontil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';
import '../../Utilities/ui_consts/them_data.dart';
import '../../Widgets/global_widgets/bottom_nav_bar.dart';
import '../../Widgets/global_widgets/main_app_bar.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return
        //Main page column
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      /*Cards box& column*/ SizedBox(
          width: 352.w,
          height: 216.h,
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*card 1 & card2*/ Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DashboardCard(
                        endColor: tdGreen,
                        header1: 'Attendance',
                        header2: 'Manager',
                        body1: 'Overall',
                        icon: atteManager),
                    DashboardCard(
                        endColor: tdRed,
                        header1: 'Marks',
                        header2: 'Manager',
                        body1: 'Semester-1',
                        icon: marksManager),
                  ],
                ),
                /*card 3 & card4*/ Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DashboardCard(
                          endColor: tdOrange,
                          header1: 'Events',
                          header2: 'Manager',
                          body1: 'SNSCT',
                          icon: eventsManager),
                      DashboardCard(
                          endColor: tdPureBlue,
                          header1: 'Task',
                          header2: 'Manager',
                          body1: 'SNSCT',
                          icon: taskManager),
                    ])
              ])),
      const Addheight(height: 32),
      //Title Header
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Addheight(width: 2),
        Text(
          "CURRENT TASKS",
          style: appTheme.textTheme.titleLarge?.copyWith(fontSize: 20.sp),
        )
      ]),

      /*Expansion tile task view is present inside this custom MyExptile open the widget to view its code*/
      //refer data/dashdatapage for variables used below
      MyExpTile(
        titleText: titleTextData,
        subtitleText: subtitleTextData,
        descriptiveText: descriptiveTextData,
      )
    ]);
  }
}
