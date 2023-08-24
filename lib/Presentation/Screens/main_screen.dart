import 'package:attentive_aid/Widgets/global_widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyNavVBVBar(),
    );
  }
}
