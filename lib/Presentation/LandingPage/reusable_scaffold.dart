import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';
import '../../Utilities/ui_consts/them_data.dart';
import '../../Widgets/global_widgets/add_height.dart';
import '../../Widgets/global_widgets/gradient_stack.dart';
import '../../Widgets/global_widgets/main_app_bar.dart';

class MyPublicScaffold extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bottomNavigationBar;
  // ignore: prefer_typing_uninitialized_variables
  final mainWidget;
  const MyPublicScaffold(
      {super.key, this.bottomNavigationBar, this.mainWidget});

  @override
  State<MyPublicScaffold> createState() => _MyPublicScaffoldState();
}

class _MyPublicScaffoldState extends State<MyPublicScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar must hide during login page
        appBar: const MyAppBar(
          notificationBadge: false,
        ),
        bottomNavigationBar: widget.bottomNavigationBar,
        extendBodyBehindAppBar: false,
        body: SafeArea(
          /*Main column*/ child: SingleChildScrollView(
            child: Column(children: [
              GradientStack(
                  height: 135,
                  child: Center(
                    child: Column(
                      children: [
                        Addheight(height: 18.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //edit these vars in global data under data folder
                              Text("Hello $studentName",
                                  style: appTheme.textTheme.titleLarge),
                              Addheight(height: 6.h),
                              Text(studentRegNo,
                                  style: appTheme.textTheme.bodyLarge),
                            ],
                          ),
                        ),

                        Addheight(
                            height: 21
                                .h), //till these everything is common for every page
                        //displays screen class at presses tab index
                        widget.mainWidget
                      ],
                    ),
                  )
                  //endpoint
                  ),
            ]),
          ),
        ));
  }
}
