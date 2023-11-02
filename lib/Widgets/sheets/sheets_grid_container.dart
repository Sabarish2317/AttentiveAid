import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import '../../Data/student_attendance_sheets_data.dart';

class MySfDataGrid extends StatefulWidget {
  const MySfDataGrid({Key? key}) : super(key: key);

  @override
  MySfDataGridState createState() => MySfDataGridState();
}

class MySfDataGridState extends State<MySfDataGrid> {
  List<StudentAttendance> studentAttendance = <StudentAttendance>[];
  late StudentDataSource studentAttendanceDataSource;

  @override
  void initState() {
    super.initState();
    studentAttendance = getStudentAttendaceData();
    studentAttendanceDataSource =
        StudentDataSource(studentAttendanceData: studentAttendance);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.w)),
        height: 540.h,
        child: ClipRect(
          clipper: CustomLeftClipper(),
          child: SfDataGridTheme(
            data: SfDataGridThemeData(
                headerHoverColor: Colors.white,
                headerColor: const Color.fromARGB(131, 150, 114, 248),
                frozenPaneElevation: 0,
                frozenPaneLineWidth: 0.5,
                frozenPaneLineColor: const Color.fromARGB(74, 150, 114, 248)),
            child: SfDataGrid(
              shrinkWrapRows: true,
              showVerticalScrollbar: true,
              gridLinesVisibility: GridLinesVisibility.horizontal,
              allowFiltering: true,
              frozenColumnsCount: 1,
              horizontalScrollController: ScrollController(),
              source: studentAttendanceDataSource,
              columnWidthMode: ColumnWidthMode.fitByColumnName,
              columns: <GridColumn>[
                GridColumn(
                    allowFiltering: false,
                    width: 68.w,
                    columnName: 'S.no',
                    label: Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: const Text(
                          'S.NO',
                        ))),
                GridColumn(
                    filterPopupMenuOptions: const FilterPopupMenuOptions(
                        filterMode: FilterMode.checkboxFilter,
                        canShowSortingOptions: false),
                    columnName: 'Sem',
                    width: 90.w,
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: const Text(
                          'Sem',
                        ))),
                GridColumn(
                    width: 78.w,
                    columnName: 'Date',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: const Text('Date'))),
                GridColumn(
                    columnName: 'Day',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: const Text(
                          'Day',
                          overflow: TextOverflow.ellipsis,
                        ))),
                GridColumn(
                    columnName: 'Total.P',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: const Text('Total.P'))),
                GridColumn(
                    columnName: 'Total.A',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: const Text('Total.A'))),
              ],
            ),
          ),
        ));
  }
}

//main class

//custom rect clup by sf

class CustomLeftClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(2, 2, size.width - 2, size.height - 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
