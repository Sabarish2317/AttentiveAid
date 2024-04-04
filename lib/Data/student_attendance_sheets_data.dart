import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class StudentAttendance {
  StudentAttendance(
    this.sno,
    this.semester,
    this.date,
    this.day,
    this.totalPresent,
    this.totalAbsent,
  );

  final int sno;

  final String semester;

  final String date;

  final int totalPresent;

  final int totalAbsent;

  final String day;
}

List<StudentAttendance> getStudentAttendaceData() {
  return [
    StudentAttendance(1, 'Sem 1', '01/10/23', 'Mon', 20, 5),
    StudentAttendance(2, 'Sem 2', '30/09/23', 'Fri', 18, 7),
    StudentAttendance(3, 'Sem 1', '15/08/23', 'Wed', 19, 6),
    StudentAttendance(4, 'Sem 2', '02/10/23', 'Tue', 22, 3),
    StudentAttendance(5, 'Sem 1', '29/09/23', 'Thu', 16, 9),
    StudentAttendance(6, 'Sem 2', '16/08/23', 'Thu', 21, 4),
    StudentAttendance(7, 'Sem 1', '03/10/23', 'Wed', 17, 8),
    StudentAttendance(8, 'Sem 2', '28/09/23', 'Wed', 23, 2),
    StudentAttendance(9, 'Sem 1', '17/08/23', 'Fri', 15, 10),
    StudentAttendance(10, 'Sem 2', '04/10/23', 'Mon', 24, 1),
    StudentAttendance(11, 'Sem 1', '27/09/23', 'Tue', 14, 11),
    StudentAttendance(12, 'Sem 2', '18/08/23', 'Mon', 25, 0),
    StudentAttendance(13, 'Sem 1', '05/10/23', 'Thu', 13, 12),
    StudentAttendance(14, 'Sem 2', '26/09/23', 'Fri', 12, 13),
    StudentAttendance(15, 'Sem 1', '19/08/23', 'Tue', 11, 14),
  ];
}

class StudentDataSource extends DataGridSource {
  StudentDataSource({required List<StudentAttendance> studentAttendanceData}) {
    _studentAttendanceData = studentAttendanceData
        .map<DataGridRow>((student) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'sno', value: student.sno),
              DataGridCell<String>(
                  columnName: 'semester', value: student.semester.toString()),
              DataGridCell<String>(columnName: 'date', value: student.date),
              DataGridCell<String>(columnName: 'totalDay', value: student.day),
              DataGridCell<int>(
                  columnName: 'total.p', value: student.totalPresent),
              DataGridCell<int>(
                  columnName: 'total.a', value: student.totalAbsent),
            ]))
        .toList();
  }

  List<DataGridRow> _studentAttendanceData = [];

  @override
  List<DataGridRow> get rows => _studentAttendanceData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
