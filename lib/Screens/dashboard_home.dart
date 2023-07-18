import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:attentive_aid/Widgets/dashboard_widgets/dashboard_card.dart';
import 'package:attentive_aid/Widgets/global_widgets/bottom_nav_bar.dart';
import 'package:attentive_aid/Widgets/global_widgets/gradient_stack.dart';
import 'package:attentive_aid/Widgets/global_widgets/main_app_bar.dart';
import 'package:attentive_aid/Widgets/global_widgets/add_height.dart';
import 'package:attentive_aid/Widgets/dashboard_widgets/my_expansiontil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utilities/ui_consts/them_data.dart';

void initState() {
  initState();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
}

class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    /*Global Variables*/ String studentName = 'Sachin S';
    String studentRegNO = '713522AM081';
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: appTheme,
              home: Scaffold(
                  extendBodyBehindAppBar: true,
                  appBar: const CustomAppBar(notificationBadge: true),
                  bottomNavigationBar: const MyNavVBVBar(),
                  body: SafeArea(
                    /*Main column*/ child: SingleChildScrollView(
                      child: Column(children: [
                        GradientStack(
                          height: 135,
                          child: /*student details column*/ Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Addheight(height: 18.h),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hello $studentName",
                                          style: appTheme.textTheme.titleLarge),
                                      Text(studentRegNO,
                                          style: appTheme.textTheme.bodyLarge),
                                    ],
                                  ),
                                ),
                                Addheight(height: 9.h),
                                Addheight(height: 18.h),
                                /*Cards box& column*/ SizedBox(
                                  width: 352.w,
                                  height: 216.h,
                                  child: const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      /*card 1 & card2*/ Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const Addheight(height: 32),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Addheight(width: 2),
                                    Text(
                                      "CURRENT TASKS",
                                      style: appTheme.textTheme.titleLarge
                                          ?.copyWith(fontSize: 20.sp),
                                    ),
                                  ],
                                ),

                                /*Expansion tile task view*/
                                const MyExpTile(
                                  titleText: "STEPHEN RUFFUS",
                                  subtitleText: "Monthly Tasks",
                                  descriptiveText:
                                      "Lorem ipsum dolor sit amet consectetur. Maecenas neque sed fames sit. Diam arcu est placerat habitant suspendisse. Volutpat pellentesque sed dictum ac.",
                                )
                              ]),
                        ),
                      ]),
                    ),
                  )),
            ));
  }
}
