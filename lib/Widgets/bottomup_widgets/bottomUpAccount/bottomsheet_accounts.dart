import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottomup.dart';

class MyAccount extends StatefulWidget {
  final String myicon;
  const MyAccount({super.key, required this.myicon});

  @override
  State<MyAccount> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const Wrap(children: [MyBottomUp()]);
              //the widgets inside for the bottom sheet is strored in widgets>bottom_upwidgets.
            },
          );
        },
        onDoubleTap: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const Wrap(children: [MyBottomUp()]);
              //the widgets inside for the bottom sheet is strored in widgets>bottom_upwidgets.
            },
          );
        },
        child: InkWell(
          child: Image.asset(
            widget.myicon,
            height: 24.h,
            width: 24.w,
          ),
        ));
  }
}
