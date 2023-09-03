import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';
import '../../Utilities/ui_consts/them_data.dart';

class SemDropDownButton extends StatefulWidget {
  const SemDropDownButton({super.key});

  @override
  State<SemDropDownButton> createState() => _SemDropDownButtonState();
}

class _SemDropDownButtonState extends State<SemDropDownButton> {
  String dropdownValue = 'Semester-1';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: 142.w,
      height: 35.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: DropdownButton<String>(
          icon: Image.asset(downArrow, height: 8.h),
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          elevation: 0,
          alignment: AlignmentDirectional.centerStart,
          style: appTheme.textTheme.bodyLarge
              ?.copyWith(fontWeight: FontWeight.w600),
          underline: const SizedBox(),
          value: dropdownValue,
          onChanged: (newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: semList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
