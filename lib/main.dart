import 'package:attentive_aid/Presentation/Routes/genetated_routes.dart';

import 'package:flutter/material.dart';

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
      onGenerateRoute: RouteGenerator().generatedRoute,
    );
  }
}
