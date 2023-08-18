import 'package:flutter/material.dart';

class Addprogram extends StatefulWidget {
  const Addprogram({Key? key}) : super(key: key);

  @override
  _AddprogramState createState() => _AddprogramState();
}


class _AddprogramState extends State<Addprogram> {
  List<String> days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday'];
  List<List<String>> schedule = List.generate(
    5,
        (_) => List.generate(6, (_) => ''),
  );


  List<String> teachers = [ 'alaa', 'basheer', 'bassam', 'abd', 'jana'
  ];

  List<String?> selectedTeachers = List.generate(5 * 6, (_) => null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Schedual'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int dayIndex = 0; dayIndex < days.length; dayIndex++)
                  Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            days[dayIndex],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          for (int period = 0; period < 6; period++)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextField(
                                    cursorColor: Colors.purple,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.purple),
                                      ),
                                      hintText: 'period ${period + 1}',
                                    ),
                                    onChanged: (value) =>
                                    schedule[dayIndex][period] = value,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                DropdownButton<String>(
                                  value: selectedTeachers[dayIndex * 6 +
                                      period],
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedTeachers[dayIndex * 6 + period] =
                                          newValue;
                                    });
                                  },
                                  items: teachers.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    },
                                  ).toList(),
                                  hint: Text('choose teacher'),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text('save'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
