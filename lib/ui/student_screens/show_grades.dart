import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [_createDataTable()],
        ),
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
      columns: _createColumns(),
      columnSpacing: 2,
      rows: _createRows(),
      dataRowHeight: 70,
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('Subject')),
      DataColumn(label: Text('Mark')),
      DataColumn(label: Text('evaluation')),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text('رياضيات')),
        DataCell(Text('80')),
        DataCell(Text('A+')),
      ]),
      DataRow(cells: [
        DataCell(Text('كيمياء')),
        DataCell(Text('70')),
        DataCell(Text('B+')),
      ]),
      DataRow(cells: [
        DataCell(Text('فيزياء')),
        DataCell(Text('70')),
        DataCell(Text('B+')),
      ]),
      DataRow(cells: [
        DataCell(Text('علوم')),
        DataCell(Text('70')),
        DataCell(Text('B+')),
      ]),
      DataRow(cells: [
        DataCell(Text('عربي')),
        DataCell(Text('70')),
        DataCell(Text('B+')),
      ]),
      DataRow(cells: [
        DataCell(Text('تربية وطنية')),
        DataCell(Text('70')),
        DataCell(Text('B+')),
      ]),
      DataRow(cells: [
        DataCell(Text('انكليزي')),
        DataCell(Text('70')),
        DataCell(Text('B+')),
      ]),
      DataRow(cells: [
        DataCell(Text('فرنسي')),
        DataCell(Text('70')),
        DataCell(Text('B+')),
      ]),
    ];
  }
}
