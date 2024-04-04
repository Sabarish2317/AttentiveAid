import 'package:attentive_aid/Presentation/LandingPage/landing_page_main.dart';
import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/them_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  Future<Future<Object?>> _login(BuildContext context) async {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LandingPage(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _login(context),
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
