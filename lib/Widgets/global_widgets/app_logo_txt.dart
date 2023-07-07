import 'package:attentive_aid/Utilities/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppLogo extends StatelessWidget {
  final double size;
  const MyAppLogo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Attentive',
          style: appTheme.textTheme.titleMedium?.copyWith(fontSize: size.sp),
        ),
        Text(
          'Aid',
          style: appTheme.textTheme.titleSmall,
        )
      ],
    );
  }
}
