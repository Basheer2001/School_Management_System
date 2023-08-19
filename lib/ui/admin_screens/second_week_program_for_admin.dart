// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:project_one/api/admin_api.dart';
import 'package:project_one/models/week_program_model.dart';
import 'package:project_one/providers/admin_provider.dart';
import 'package:project_one/widgets/custom_bar_button.dart';
import 'package:provider/provider.dart';

class SecondWeekProgramForAdmin extends StatefulWidget {
  const SecondWeekProgramForAdmin({super.key});

  @override
  State<SecondWeekProgramForAdmin> createState() =>
      _SecondWeekProgramForAdminState();
}

class _SecondWeekProgramForAdminState extends State<SecondWeekProgramForAdmin>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ViewWeekProgram viewWeekProgram = ViewWeekProgram();
    final provider = Provider.of<AdminProivder>(context);
    if (provider.state == ListScreenState.inital) {
      print('if');
      provider.fetchWeekProgram();
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      print('else');
      viewWeekProgram = provider.viewWeekProgram;
      //provider.refreshState();
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Color(0xff5b418f),
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopRow(),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTabButton(
                        text: 'Sun',
                        textTwo: '1',
                        isSelected: _tabController.index == 0,
                        onTap: () {
                          //  day = 'sunday';
                          //  provider.getDayName(day);
                          //  provider.refreshState();
                          setState(() {
                            _tabController.animateTo(0);
                          });
                          //  _tabController.animateTo(0); جرب بدون سيت ستيت
                        },
                      ),
                      CustomTabButton(
                        text: 'Mon',
                        textTwo: '2',
                        isSelected: _tabController.index == 1,
                        onTap: () {
                          //   day = 'monday';
                          //   provider.refreshState();
                          //    provider.getDayName(day);
                          setState(() {
                            _tabController.animateTo(1);
                          });
                        },
                      ),
                      CustomTabButton(
                        text: 'Tue',
                        textTwo: '3',
                        isSelected: _tabController.index == 2,
                        onTap: () {
                          //  day = 'tuesday';
                          //  provider.refreshState();
                          // provider.getDayName(day);
                          setState(() {
                            _tabController.animateTo(2);
                          });
                        },
                      ),
                      CustomTabButton(
                        text: 'Wed',
                        textTwo: '4',
                        isSelected: _tabController.index == 3,
                        onTap: () {
                          //   day = 'wednesday';
                          //   provider.refreshState();
                          // provider.getDayName(day);
                          setState(() {
                            _tabController.animateTo(3);
                          });
                        },
                      ),
                      CustomTabButton(
                        text: 'Thu',
                        textTwo: '5',
                        isSelected: _tabController.index == 4,
                        onTap: () {
                          // day = 'thursday';
                          //provider.refreshState();
                          //provider.getDayName(day);
                          setState(() {
                            _tabController.animateTo(4);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 6,
                  itemBuilder: ((context, i) {
                    Day myDay = viewWeekProgram.day![i];
                    //Subjects mySubject = viewTeachersModel.teachers![i].subjects![0];
                    return CardWidget(
                        period: 'Peroid 1',
                        subject: myDay.subjectName,
                        teacher: myDay.teacherName,
                        time: '8:00 - 9:00');
                  }),
                ),
                // ListView(children: [
                //   CardWidget(
                //       period: 'Period 1',
                //       subject: 'Geometry',
                //       teacher: 'Ahmad',
                //       time: '8:00 - 9:00'),
                //   CardWidget(
                //       period: 'Period 2',
                //       subject: 'Physics',
                //       teacher: 'Basheer',
                //       time: '9:00 - 10:00'),
                //   CardWidget(
                //       period: 'Period 3',
                //       subject: 'Math',
                //       teacher: 'Bassam',
                //       time: '10:00 - 11:00'),
                //   CardWidget(
                //       period: 'Period 4',
                //       subject: 'Science',
                //       teacher: 'Abd',
                //       time: '11:00 - 12:00'),
                // ]),
                ListView(
                  children: [
                    CardWidget(
                        period: 'Peroid 1',
                        subject: 'Geometry',
                        teacher: 'Ahmad',
                        time: '8:00 - 9:00'),
                    CardWidget(
                        period: 'Peroid 2',
                        subject: 'physics',
                        teacher: 'Basheer',
                        time: '9:00 - 10:00'),
                    CardWidget(
                        period: 'Peroid 3',
                        subject: 'Math',
                        teacher: 'Bassam',
                        time: '10:00 - 11:00'),
                    CardWidget(
                        period: 'Peroid 4',
                        subject: 'Science',
                        teacher: 'Abd',
                        time: '11:00 - 12:00'),
                  ],
                ),
                ListView(
                  children: [
                    CardWidget(
                        period: 'Peroid 1',
                        subject: 'Geometry',
                        teacher: 'Ahmad',
                        time: '8:00 - 9:00'),
                    CardWidget(
                        period: 'Peroid 2',
                        subject: 'physics',
                        teacher: 'Basheer',
                        time: '9:00 - 10:00'),
                    CardWidget(
                        period: 'Peroid 3',
                        subject: 'Math',
                        teacher: 'Bassam',
                        time: '10:00 - 11:00'),
                    CardWidget(
                        period: 'Peroid 4',
                        subject: 'Science',
                        teacher: 'Abd',
                        time: '11:00 - 12:00'),
                  ],
                ),
                ListView(
                  children: [
                    CardWidget(
                        period: 'Peroid 1',
                        subject: 'Geometry',
                        teacher: 'Ahmad',
                        time: '8:00 - 9:00'),
                    CardWidget(
                        period: 'Peroid 2',
                        subject: 'physics',
                        teacher: 'Basheer',
                        time: '9:00 - 10:00'),
                    CardWidget(
                        period: 'Peroid 3',
                        subject: 'Math',
                        teacher: 'Bassam',
                        time: '10:00 - 11:00'),
                    CardWidget(
                        period: 'Peroid 4',
                        subject: 'Science',
                        teacher: 'Abd',
                        time: '11:00 - 12:00'),
                  ],
                ),
                ListView(
                  children: [
                    CardWidget(
                        period: 'Peroid 1',
                        subject: 'Geometry',
                        teacher: 'Ahmad',
                        time: '8:00 - 9:00'),
                    CardWidget(
                        period: 'Peroid 2',
                        subject: 'physics',
                        teacher: 'Basheer',
                        time: '9:00 - 10:00'),
                    CardWidget(
                        period: 'Peroid 3',
                        subject: 'Math',
                        teacher: 'Bassam',
                        time: '10:00 - 11:00'),
                    CardWidget(
                        period: 'Peroid 4',
                        subject: 'Science',
                        teacher: 'Abd',
                        time: '11:00 - 12:00'),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String period;
  final String? time;
  final String? teacher;
  final String subject;
  const CardWidget({
    required this.period,
    required this.subject,
    required this.teacher,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                period,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              lineGen(
                lines: [20.0, 30.0, 40.0, 10.0],
              ),
            ],
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              //color: Color(0xfffcf9f5),
              color: Color(0xff654f91),
              //  color: Color.fromARGB(244, 242, 232, 229),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 4),
              color: Color(0xfffcf9f5),
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 21,
                    child: Row(
                      children: [
                        Text(time!),
                        // VerticalDivider(),
                        // RichText(
                        //   text: TextSpan(children: [
                        //     TextSpan(
                        //         text: 'Teacher: ',
                        //         style:
                        //             TextStyle(color: Colors.black)),
                        //     TextSpan(text: 'test'
                        //         //teacherModel.name,

                        //         )
                        //   ]),
                        // ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: subject,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'teacher: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: teacher,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ])),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class lineGen extends StatelessWidget {
  final lines;
  const lineGen({Key? key, this.lines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        4,
        (index) => Container(
          height: 2,
          width: lines[index],
          color: Color(0xffd0d2d8),
          margin: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              'Week ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Text(
              'Program',
              style: TextStyle(
                color: Color(0xffa79abf),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
