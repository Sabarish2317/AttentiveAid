import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardCard extends StatefulWidget {
  const DashBoardCard({super.key});

  @override
  State<DashBoardCard> createState() => _DashBoardCardState();
}

class _DashBoardCardState extends State<DashBoardCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168.w,
      height: 100.w,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.95, -0.33),
          end: Alignment(-0.95, 0.33),
          colors: [Color(0xFF8D8CF5), Color(0xC150B40D)],
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0x269F9FF3)),
          borderRadius: BorderRadius.circular(19),
        ),
      ),
    );
  }
}
