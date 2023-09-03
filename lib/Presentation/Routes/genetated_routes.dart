import 'package:attentive_aid/Business_Logic/LandingPage_bloc/landing_page_bloc.dart';
import 'package:attentive_aid/Presentation/Screens/landing_page._main.dart';
import 'package:attentive_aid/Widgets/global_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  Route<dynamic> generatedRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LandingPageBloc>.value(
            value: LandingPageBloc(),
            child: const LandingPage(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

//error page for showing ass from nav bar
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        appBar: MyAppBar(notificationBadge: true),
        body: Center(
          child: Text("Error"),
        ),
      );
    });
  }
}
