import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNavVBVBar extends StatefulWidget {
  const MyNavVBVBar({super.key});

  @override
  State<MyNavVBVBar> createState() => _MyNavVBVBarState();
}

class _MyNavVBVBarState extends State<MyNavVBVBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393.w,
      height: 59.h,
      padding: const EdgeInsets.only(
        top: 14,
        left: 24,
        right: 24,
        bottom: 19,
      ),
      decoration: const ShapeDecoration(
        color: Color(0xFFF4F5F7),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.75,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFE3E8FE),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            splashRadius: 25,
            onPressed: () {
              setState(
                () {
                  isOnOff = !isOnOff;
                },
              );
            },
            icon: Image.asset(
              navHomeout,
              height: 24.h,
              width: 24.w,
            ),
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {
              setState(
                () {
                  isOnOff = !isOnOff;
                },
              );
            },
            icon: Image.asset(
              navLeaveOUt,
              height: 24.h,
              width: 24.w,
            ),
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {
              setState(
                () {
                  isOnOff = !isOnOff;
                },
              );
            },
            icon: Image.asset(
              navPieOut,
              height: 24.h,
              width: 24.w,
            ),
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {
              setState(
                () {
                  isOnOff = !isOnOff;
                },
              );
            },
            icon: Image.asset(
              navProfileOut,
              height: 24.h,
              width: 24.w,
            ),
          )
        ],
      ),
    );
  }
}
