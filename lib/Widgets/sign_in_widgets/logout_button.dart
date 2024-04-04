import 'package:attentive_aid/Presentation/Screens/login_screen_page.dart';
import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/them_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogOutButton extends StatefulWidget {
  const LogOutButton({super.key});

  @override
  State<LogOutButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LogOutButton> {
  Future<Future<Object?>> _logout(BuildContext context) async {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _logout(context),
      child: Container(
        width: 113.w,
        height: 37.h,
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
            'LOGOUT',
            textAlign: TextAlign.center,
            style: appTheme.textTheme.displayLarge?.copyWith(fontSize: 12.sp),
          ),
        ),
      ),
    );
  }
}
