import 'package:flutter/material.dart';

import 'Screens/login_screen.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AttentiveAid',
      home: LoginPage(),
      /*initialRoute: '/',
      routes: {
        '/login': (context) => const LoginPage(),
      },*/
    );
  }
}
