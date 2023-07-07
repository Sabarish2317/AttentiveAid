import 'package:flutter/material.dart';

class Addheight extends StatelessWidget {
  final double height;
  const Addheight({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
