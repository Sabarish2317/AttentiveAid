import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:attentive_aid/Utilities/ui_consts/them_data.dart';
import 'package:attentive_aid/Widgets/global_widgets/app_logo_txt.dart';
import 'package:attentive_aid/Widgets/global_widgets/add_height.dart';
import 'package:attentive_aid/Widgets/sign_in_widgets/login_button.dart';
import 'package:attentive_aid/Widgets/sign_in_widgets/text_field_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/global_widgets/check_box.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) => Scaffold(
              extendBodyBehindAppBar: true,
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    /*main clm*/ child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Addheight(height: keyboardHeight > 50 ? 50 : 130.h),
                        Image.asset(
                          fingerIcon,
                          height: 72.75.h,
                          width: 75.w,
                        ),
                        //condition ? expressionOne : expressionTwo;
                        Addheight(height: 12.25.h),
                        const Center(child: MyAppLogo(size: 24)),
                        Addheight(height: 73.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email",
                            style: appTheme.textTheme.displayMedium,
                          ),
                        ),
                        Addheight(height: 12.h),
                        TextFieldInput(
                            textEditingController: _emailController,
                            labelText: 'Email ID',
                            isPassword: false,
                            preffixIcon: userProfile),
                        Addheight(height: 12.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Password',
                              style: appTheme.textTheme.displayMedium),
                        ),
                        Addheight(height: 12.h),
                        TextFieldInput(
                          textEditingController: _passwordController,
                          labelText: 'Password',
                          preffixIcon: passwordLock,
                          isPassword: true,
                          suffixIcon: eyeLock,
                          suffixIconOn: eyeLockOn,
                        ),
                        Addheight(height: 10.h),
                        const Align(
                            alignment: Alignment.center,
                            child: MyCheckBox(throwShotAway: true)),
                        Addheight(height: 35.h),
                        const LoginButton(),
                        Addheight(height: 193.h),
                        Text('Designed for SNSCT',
                            style: appTheme.textTheme.displayMedium
                                ?.copyWith(fontSize: 12, color: tdLightBlack))
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
