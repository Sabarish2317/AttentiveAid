import 'package:attentive_aid/Business_Logic/LandingPage_bloc/landing_page_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';
import '../../Utilities/ui_consts/them_data.dart';
import '../../Widgets/global_widgets/add_height.dart';
import '../../Widgets/global_widgets/bloc_bottom_navbar.dart';
import '../../Widgets/global_widgets/gradient_stack.dart';
import '../../Widgets/global_widgets/main_app_bar.dart';

//using bloc for custom nav bar
//landing page gets column as its child
//all important parameters and widgets are implemented in this landin page widget and thus child (column) inherits it.

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
//screenutil helps to change the dimensions of the text and containers for different phone screens.
        return ScreenUtilInit(
            designSize: const Size(393, 852),
            builder: (context, child) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: appTheme,
                  home: Scaffold(
                      //app bar must hide during login page
                      appBar: const MyAppBar(
                        notificationBadge: false,
                      ),
                      bottomNavigationBar: BottomNavigationBar(
                          items: bottomNavItems,
                          currentIndex: state.tabindex,
                          onTap: (index) {
                            BlocProvider.of<LandingPageBloc>(context)
                                .add(Tabchange(tabindex: index));
                          }),
                      extendBodyBehindAppBar: false,
                      body: SafeArea(
                        /*Main column*/ child: SingleChildScrollView(
                          child: Column(children: [
                            GradientStack(
                                height: 135,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Addheight(height: 18.h),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            //edit these vars in global data under data folder
                                            Text("Hello $studentName",
                                                style: appTheme
                                                    .textTheme.titleLarge),
                                            Addheight(height: 6.h),
                                            Text(studentRegNo,
                                                style: appTheme
                                                    .textTheme.bodyLarge),
                                          ],
                                        ),
                                      ),

                                      Addheight(
                                          height: 21
                                              .h), //till these everything is common for every page
                                      bottomNavScreen.elementAt(state.tabindex),
                                    ],
                                  ),
                                )
                                //endpoint
                                ),
                          ]),
                        ),
                      )),
                ));
      },
    );
  }
}
