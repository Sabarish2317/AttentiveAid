import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Data/Widget_data_variables/global_student_data.dart';
import '../../Utilities/ui_consts/them_data.dart';

class SheetsSemDropDownButton extends StatefulWidget {
  const SheetsSemDropDownButton({super.key});

  @override
  State<SheetsSemDropDownButton> createState() =>
      _SheetsSemDropDownButtonState();
}

class _SheetsSemDropDownButtonState extends State<SheetsSemDropDownButton> {
  var dropdownValue = "Sem-1";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD0D3FC), width: 1),
          color: const Color(0xffffffff),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      width: 142.w,
      height: 35.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: DropdownButton<String>(
          dropdownColor: const Color(0xffffffff),
          icon: Image.asset(
            downArrow,
            height: 8.h,
            color: const Color(0xff8D8CF5),
          ),
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          elevation: 1,
          alignment: AlignmentDirectional.centerStart,
          style: appTheme.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w600, color: const Color(0xff344054)),
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
