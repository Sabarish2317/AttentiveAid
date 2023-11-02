import 'package:attentive_aid/Presentation/LandingPage/reusable_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utilities/ui_consts/them_data.dart';
import '../../Widgets/navbar_widget/bottom_nav_itemns.dart';

//
//The landing page is the main Scaffold returning the to the material app in the main func() it renders all the r screens in bottom nav bar
//when inner pages are opened this scaffold is overStacked by that page"s own Scaffold

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //
  //Selected page is 0 for the homepage index in bottomnav bar
  //
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    //
    //ScreenUtil changes the size of the Container ,margins,Space and text according to different Screen Size
    //
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appTheme,
            //
            //Public Scaffold utilizes the theme template for the ui of the app
            //
            home: MyPublicScaffold(
              bottomNavigationBar: BottomNavigationBar(
                  items: bottomNavItems,
                  currentIndex: selectedPage,
                  backgroundColor: Colors.white,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                  }),
              mainWidget: pageOptions[selectedPage],
            )));
  }
}
