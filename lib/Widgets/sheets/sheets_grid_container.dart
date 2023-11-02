import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

//left clipper to clip left side of table fo ui satisfy purpose
class CustomLeftClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(2, 2, size.width - 2, size.height - 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

//main code for tables
class MyDataGrid extends StatefulWidget {
  const MyDataGrid({super.key});

  @override
  MyDataGridState createState() => MyDataGridState();
}

class MyDataGridState extends State<MyDataGrid> {
  List<DataGridRow> gridRows = [];

  //dummmy data set of subjects
  Map<String, List<Map<String, bool>>> subjects = {
    'Mon': [
      {'Mat': true},
      {'Sci': false},
      {'Eng': true},
      {'His': false},
      {'Geo': true},
      {'Art': false},
      {'Mus': true},
      {'PE': false}
    ],
    'Tue': [
      {'Eng': false},
      {'Mat': true},
      {'Bio': false},
      {'Che': true},
      {'Phy': false},
      {'Art': true},
      {'PE': false},
      {'Mus': true}
    ],
    'Wed': [
      {'Geo': true},
      {'His': false},
      {'Phy': true},
      {'Che': false},
      {'Bio': true},
      {'Mat': false},
      {'Eng': true},
      {'Art': false}
    ],
    'Thu': [
      {'Mus': false},
      {'PE': true},
      {'Art': false},
      {'Eng': true},
      {'Mat': false},
      {'Bio': true},
      {'Che': false},
      {'Phy': true}
    ],
    'Fri': [
      {'His': true},
      {'Geo': false},
      {'Art': true},
      {'Mus': false},
      {'PE ': true},
      {'Eng ': false},
      {'Mat ': true},
      {'Bio ': false}
    ]
  };

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 30; i++) {
      // total nos of rows=i
      var date = DateTime.now().add(Duration(days: i));
      var day = DateFormat('EEE').format(date);
      gridRows.add(DataGridRow(cells: [
        DataGridCell(columnName: 'sno', value: '${i + 1}'),
        DataGridCell(
            columnName: 'date', value: DateFormat('yyyy-MM-dd').format(date)),
        DataGridCell(columnName: 'day', value: day),
        for (var j = 0; j < 8; j++)
          DataGridCell(
            columnName: 'period${j + 1}',
            value: subjects[day]?[j].keys.first ?? 'H',
          )
      ]));
    }
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
                source: _DataSource(gridRows, subjects),
                columns: [
                  GridColumn(
                      columnName: 'sno',
                      label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: const Text('S.NO')),
                      width: 50.w),
                  GridColumn(
                      columnName: 'date',
                      label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: const Text('Date')),
                      width: 100.w),
                  GridColumn(
                    columnName: 'day',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: const Text('Day')),
                  ),
                  for (var i = 1; i <= 8; i++)
                    GridColumn(
                      columnName: 'period$i',
                      label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Text('$i')),
                    ),
                ],
                frozenColumnsCount: 1,
              )),
        ));
  }
}

//data source fot grid
class _DataSource extends DataGridSource {
  _DataSource(this.gridRows, this.subjects);

  final List<DataGridRow> gridRows;
  final Map<String, List<Map<String, bool>>> subjects;

  @override
  List<DataGridRow> get rows => gridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    var cells = row.getCells();
    return DataGridRowAdapter(
        cells: cells.map((cell) {
      var columnIndex = cells.indexOf(cell);
      if (columnIndex > 2) {
        var daySubjects = subjects[row.getCells()[2].value];
        if (daySubjects != null && daySubjects.length > columnIndex - 3) {
          var subjectMap = daySubjects[columnIndex - 3];
          // ignore: unnecessary_null_comparison
          if (subjectMap != null) {
            var subjectValue = subjectMap.values.first;
            var color = subjectValue ? Colors.green : Colors.red;
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child:
                  Text(cell.value.toString(), style: TextStyle(color: color)),
            );
          }
        }
      }
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(cell.value.toString()),
      );
    }).toList());
  }
}
