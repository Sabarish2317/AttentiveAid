import 'package:attentive_aid/Data/Widget_data_variables/global_student_data.dart';
import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:attentive_aid/Widgets/global_widgets/add_height.dart';
import 'package:attentive_aid/Widgets/global_widgets/mydivider.dart';
import 'package:attentive_aid/Widgets/qr.dart';
import 'package:attentive_aid/Widgets/sign_in_widgets/logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utilities/ui_consts/them_data.dart';

class MyBottomUp extends StatefulWidget {
  const MyBottomUp({super.key});

  @override
  State<MyBottomUp> createState() => _MyBottomUpState();
}

class _MyBottomUpState extends State<MyBottomUp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 392.w,
            height: 308.h,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0x4C8D8CF5),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(2, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                Addheight(height: 5.h),
                /*DEOCR*/ Container(
                  width: 59.w,
                  height: 5.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9672F8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                /*row 1*/ Padding(
                  padding: EdgeInsets.fromLTRB(19.w, 37.h, 19.w, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 69.w,
                          height: 69.w,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 1, color: tdPurePurple),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6.69.w),
                            child: Image.asset(fakepfp),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            studentName,
                            style: appTheme.textTheme.titleLarge
                                ?.copyWith(fontSize: 22.sp),
                          ),
                          Text(
                            studentRegNo,
                            style: appTheme.textTheme.bodyMedium
                                ?.copyWith(fontSize: 12.sp),
                          )
                        ],
                      ),
                      const LogOutButton()
                    ],
                  ),
                ),
                Addheight(
                  height: 28.h,
                ),
                /*div*/ MyDivider(width: 393.w),
                Padding(
                    padding: EdgeInsets.fromLTRB(19.w, 37.h, 19.w, 0),
                    child: SizedBox(
                      height: 100.h,
                      width: 268.w,
                      child: const MyBarcodeGen(),
                    ))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
