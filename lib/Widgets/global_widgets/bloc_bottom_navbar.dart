import 'package:attentive_aid/Presentation/Screens/leave_req_page.dart';

import 'package:attentive_aid/Presentation/Screens/piechart_page.dart';
import 'package:attentive_aid/Presentation/Screens/profile_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Presentation/Screens/dashboard_home.dart';
import '../../Utilities/ui_consts/icons_const.dart';

List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
//List of items visually at bottom nav bar
  BottomNavigationBarItem(
      activeIcon: Image.asset(
        navHome,
        height: 24.h,
        width: 24.w,
      ),
      icon: Image.asset(
        navHomeout,
        height: 24.h,
        width: 24.w,
      ),
      label: 'Home'),
  BottomNavigationBarItem(
      activeIcon: Image.asset(
        navLeave,
        height: 24.h,
        width: 24.w,
      ),
      icon: Image.asset(
        navLeaveOUt,
        height: 24.h,
        width: 24.w,
      ),
      label: 'Login'),
  BottomNavigationBarItem(
      activeIcon: Image.asset(
        navPie,
        height: 24.h,
        width: 24.w,
      ),
      icon: Image.asset(
        navPieOut,
        height: 24.h,
        width: 24.w,
      ),
      label: 'Login'),
  BottomNavigationBarItem(
      activeIcon: Image.asset(
        navProfile,
        height: 24.h,
        width: 24.w,
      ),
      icon: Image.asset(
        navProfileOut,
        height: 24.h,
        width: 24.w,
      ),
      label: 'Login'),
];

//using bloc : the parent scaffold is this landing page
//Other pages are considered as stWidgets and are rendered inside this common scaffold

//StWidgts which are child screens
const List<Widget> bottomNavScreen = <Widget>[
  DashboardHome(),
  LeaveReqPage(),
  PieChartPage(),
  ProfilePage(),
];
