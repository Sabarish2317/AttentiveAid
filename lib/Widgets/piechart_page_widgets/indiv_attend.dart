import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Widgets/global_widgets/add_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/ui_consts/them_data.dart';

/*this widget is responsibele for the Entire attendance overall container*/

class IndivAttend extends StatefulWidget {
  const IndivAttend({super.key});

  @override
  State<IndivAttend> createState() => _IndivAttendState();
}

class _IndivAttendState extends State<IndivAttend> {
  @override
  Widget build(BuildContext context) {
    //vars (use contructors and state provider for bknd)
    String subjectName = 'Physics of Photonics';
    //infrom before changing percent login child widget use same %logic
    /*main non-null parameter*/ int presentPercent = 75;
    int absentPercent = 100 - presentPercent;

    return ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
              height: 21.h,
            ),
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 190.h,
            width: 351.w,
            decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              border: Border.all(color: const Color(0xffD0D3FC), width: 1),
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            /*main column inside contianer*/ child: Padding(
              padding: EdgeInsets.all(20.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*const heading*/ Text(
                    "Subject",
                    style: appTheme.textTheme.bodyLarge
                        ?.copyWith(color: tdgrayblue),
                  ),
                  Addheight(height: 10.h),
                  /*subjectnamae*/ Text(
                    subjectName,
                    style: appTheme.textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.w800),
                  ),
                  Addheight(height: 15.h),
                  /*loading container*/ Row(
                    children: [
                      Expanded(
                        flex: presentPercent,
                        child: Container(
                          height: 29.h,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              color: tdGreen),
                        ),
                      ),
                      Expanded(
                        flex: absentPercent,
                        child: Container(
                          height: 29.h,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              color: tdRed),
                        ),
                      ),
                    ],
                  ),
                  Addheight(height: 15.h),
                  /*details row*/ Row(
                    children: [
                      /*present details*/ Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Present",
                            style: appTheme.textTheme.bodyLarge
                                ?.copyWith(color: tdgrayblue),
                          ),
                          Addheight(height: 10.h),
                          Text(
                            "$presentPercent%",
                            style: appTheme.textTheme.labelLarge
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      SizedBox(width: 38.w),
                      /*Absent column*/ Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Absent",
                            style: appTheme.textTheme.bodyLarge
                                ?.copyWith(color: tdgrayblue),
                          ),
                          Addheight(height: 10.h),
                          Text(
                            "$absentPercent%",
                            style: appTheme.textTheme.labelLarge
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
