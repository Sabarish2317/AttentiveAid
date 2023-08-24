import 'package:attentive_aid/Business_Logic/LandingPage_bloc/landing_page_bloc.dart';
import 'package:attentive_aid/Presentation/Screens/dashboard_home.dart';
import 'package:attentive_aid/Presentation/Screens/login_screen.dart';
import 'package:attentive_aid/Widgets/global_widgets/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  Route<dynamic> generatedRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LandingPageBloc>.value(
            value: LandingPageBloc(),
            child: const LoginPage(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        appBar: CustomAppBar(notificationBadge: true),
        body: Center(
          child: Text("Error"),
        ),
      );
    });
  }
}
