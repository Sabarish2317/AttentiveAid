import 'package:attentive_aid/Utilities/Colors/colors.dart';
import 'package:attentive_aid/Utilities/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 289.w,
        height: 44.h,
        decoration: ShapeDecoration(
          color: tdPurePurple,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.50,
              color: Colors.white.withOpacity(0.15),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 5,
              offset: Offset(0, 4),
              spreadRadius: 1,
            )
          ],
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'LOGIN',
            textAlign: TextAlign.center,
            style: appTheme.textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
