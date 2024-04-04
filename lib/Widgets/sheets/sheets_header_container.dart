import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilities/ui_consts/icons_const.dart';
import '../../Utilities/ui_consts/them_data.dart';

class OverallSheetsHeader extends StatelessWidget {
  const OverallSheetsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'OVERALL',
              style: TextStyle(
                color: Color(0xFF1E1B39),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 0.06,
              ),
            ),
            Text(
              'A T T E N D A N C E',
              style: TextStyle(
                color: Color(0xFF615E82),
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: -0.95,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 74.82.w,
              height: 25.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                border: Border.all(color: const Color(0xffD0D3FC), width: 1),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Sheets")],
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Container(
              width: 52.w,
              height: 25.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                border: Border.all(color: const Color(0xffD0D3FC), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    pdf,
                    width: 14.h,
                    height: 14.w,
                  ),
                  Text(
                    "PDF",
                    style: appTheme.textTheme.labelMedium?.copyWith(
                      color: const Color(0xFF344053),
                      fontSize: 8,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
