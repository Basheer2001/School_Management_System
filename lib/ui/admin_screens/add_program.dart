import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  List<String> days = ['Sunday','Monday', 'Tuesday', 'Wednesday', 'Thursday',];
  List<String> periods = ['1', '2', '3', '4', '5', '6'];
  Map<String, Map<String, String>> scheduleData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Weekly Schedule'),
      ),
      body: ListView(
          children:[ Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Enter the weekly schedule:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Table(
                  border: TableBorder.all(),
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1),
                    5: FlexColumnWidth(1),
                    6: FlexColumnWidth(1),
                  },
                  children: [
                    TableRow(
                      children: [
                        const TableCell(child: SizedBox()),
                        for (var period in periods)
                          TableCell(
                            child: Center(child: Text('Period $period')),
                          ),
                      ],
                    ),
                    for (var day in days)
                      TableRow(
                        children: [
                          TableCell(child: Center(child: Text(day))),
                          for (var period in periods)
                            TableCell(
                              child: TextFormField(
                                style: const TextStyle(fontSize: 15),
                                onChanged: (value) {
                                  setState(() {
                                    if (!scheduleData.containsKey(day)) {
                                      scheduleData[day] = {};
                                    }
                                    scheduleData[day]![period] = value;
                                  });
                                },
                                initialValue: scheduleData.containsKey(day)
                                    ? scheduleData[day]![period]
                                    : '',
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print(scheduleData); // Replace with your desired action
                  },
                  child: Text('Save Schedule'),
                ),
              ],
            ),
          ),
          ]
      ),

    );
  }
}
