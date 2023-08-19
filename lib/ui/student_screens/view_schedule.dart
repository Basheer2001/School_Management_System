import 'package:flutter/material.dart';



class ViewSchedule extends StatefulWidget {
  const ViewSchedule({super.key});

  @override
  _ViewSchedule createState() => _ViewSchedule();
}


class _ViewSchedule extends State<ViewSchedule> {
  final List<String> days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday'];
  final List<List<String>> schedule = [
    ['Math', 'Science', 'English', 'History', 'Physical ','ss'],
    ['Science', 'Math', 'English', 'History', '','ss'],
    ['English', 'Math', 'Science', 'History', '',''],
    ['History', 'Math', 'Science', 'English', 'Physical Ed',''],
    ['Math', 'English', 'Science', 'History', '',''],
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Schedule'),
        backgroundColor: Color(0xff886ff2),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int dayIndex = 0; dayIndex < days.length; dayIndex++)
                Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          days[dayIndex],
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        for (int period = 0; period < schedule[dayIndex].length; period++)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(),
                              Text(
                                'Period ${period + 1}:   ${schedule[dayIndex][period]}',
                                style: TextStyle(fontSize: 16,),

                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
