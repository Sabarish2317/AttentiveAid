import 'package:attentive_aid/Presentation/Screens/dashboard_home.dart';

import 'package:flutter/material.dart';

import 'Presentation/Screens/login_screen.dart';

void main() {
  runApp(const MyApp());
} //main fucntion

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AttentiveAid',
      home: const LoginPage(),
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const DashboardHome(),
      },
    );
  }
}
