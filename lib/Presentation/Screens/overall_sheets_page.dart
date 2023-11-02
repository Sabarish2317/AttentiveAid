import 'package:attentive_aid/Presentation/LandingPage/reusable_scaffold.dart';

import 'package:attentive_aid/Widgets/sheets/sheets_grid_container.dart';
import 'package:attentive_aid/Widgets/sheets/sheets_semester_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';
import '../../Utilities/ui_consts/colors.dart';
import '../../Utilities/ui_consts/them_data.dart';
import '../../Widgets/global_widgets/add_height.dart';

import '../../Widgets/sheets/sheets_header_container.dart';

class OverallSheets extends StatelessWidget {
  const OverallSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appTheme,
            home: MyPublicScaffold(
                mainWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Addheight(height: 16.h),
                /*semselection row*/ Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ATTENDANCE",
                              style: appTheme.textTheme.labelLarge
                                  ?.copyWith(color: tdPureBlue)),
                          Text(studentClass,
                              style: appTheme.textTheme.bodyLarge)
                        ]),
                    const SheetsSemDropDownButton()
                  ],
                ),
                Addheight(
                  height: 14.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffD0D3FC), width: 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13.w),
                        topRight: Radius.circular(13.w)),
                    color: Colors.white,
                  ),
                  height: 600.h,
                  width: 371.w,
                  child: const Column(children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: OverallSheetsHeader(),
                    ),
                    MyDataGrid()
                  ]),
                )
              ],
            )))); //ll these everything is common for every page
    //displays screen class at presses tab index
    /*Main screen column*/
  }
}
