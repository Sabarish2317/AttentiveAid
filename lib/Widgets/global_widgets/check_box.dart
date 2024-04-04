import 'package:attentive_aid/Utilities/ui_consts/them_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCheckBox extends StatefulWidget {
  final bool throwShotAway;
  const MyCheckBox({super.key, required this.throwShotAway});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  var throwShotAway = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 18.h,
          child: Row(
            children: [
              SizedBox(
                width: 25,
                height: 18,
                child: Checkbox(
                  value: throwShotAway,
                  onChanged: (bool? newValue) {
                    setState(() {
                      throwShotAway = newValue!;
                    });
                  },
                ),
              ),
              Text(
                'Remember me',
                style: appTheme.textTheme.displaySmall,
              )
            ],
          ),
        ),
        Text('Forgot Password', style: appTheme.textTheme.displaySmall)
      ],
    );
  }
}
