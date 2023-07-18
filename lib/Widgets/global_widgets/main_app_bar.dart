import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Widgets/global_widgets/app_logo_txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/ui_consts/icons_const.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final bool notificationBadge;

  const CustomAppBar({
    Key? key,
    required this.notificationBadge,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: tdBgColor,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment(1.00, -0.00),
            end: Alignment(-1, 0),
            colors: [
              Color.fromRGBO(251, 130, 196, 0.2),
              Color.fromRGBO(150, 114, 248, 0.2)
            ],
          )),
        ),
        title: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  burgerMenu,
                  height: 20.h,
                  width: 20.h,
                ),
                MyAppLogo(size: 24.sp),
                Stack(children: <Widget>[
                  SizedBox(
                    child: Image.asset(
                      bellNotifi,
                      height: 20.h,
                      width: 20.h,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 2,
                    child: SizedBox(
                      height: 9.2.h,
                      width: 9.2.h,
                      child: notificationBadge
                          ? Image.asset(
                              dotNotifi,
                              height: 9.2.h,
                              width: 9.2.h,
                            )
                          : Image.asset(nullImg),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ));
  }
}
