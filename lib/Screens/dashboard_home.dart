import 'package:attentive_aid/Widgets/global_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utilities/data_theme.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: appTheme,
              home: Scaffold(
                appBar: const CustomAppBar(notificationBadge: true),
                body: SafeArea(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w))),
              ),
            ));
  }
}
