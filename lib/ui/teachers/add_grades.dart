// import 'package:flutter/material.dart';
//
//
//
// <<<<<<< HEAD
// class GradesPage extends StatefulWidget {
//   const GradesPage({super.key});
//
//   @override
//   _GradesPageState createState() => _GradesPageState();
// }
//
// class _GradesPageState extends State<GradesPage> {
//   List<String> subjects = ['رياضيات', 'فيزياء', 'كيمياء', 'علوم','عربي','انكليزي','فرنسي','تربية وطنية'];
// =======
// class AddGrades extends StatefulWidget {
//   const AddGrades({super.key});
//
//   @override
//   _AddGradesState createState() => _AddGradesState();
// }
//
// class _AddGradesState extends State<AddGrades> {
//   List<String> subjects = ['رياضيات', 'فيزياء', 'كيمياء', 'علوم','عربي','انكليزي','فرنسي'];
// >>>>>>> origin/master
//   Map<String, double> grades = {};
//   Map<String, double> eval = {};
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor:  Color(0xff886ff2),
//
// >>>>>>> origin/master
//         title: const Text('Student Grades Input'),
//       ),
//       body: ListView(
//           children:[ Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 const SizedBox(height: 16),
//                 Column(
//                   children: subjects.map((subject) {
//                     return Row(
//                       children: [
//                         Expanded(child: Text(subject,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
//
//                         ),
//
//                         const SizedBox(width: 16),
//                         Expanded(
//                           child: TextFormField(
//                             keyboardType: TextInputType.number,
//                             onChanged: (value) {
//                               setState(() {
//                                 grades[subject] = double.tryParse(value) ?? 0.0;
//
//                               });
//                             },
//                             decoration: const InputDecoration(
//                               hintText: 'Enter grade',
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         Expanded(
//                           child: TextFormField(
//                             keyboardType: TextInputType.text,
//                             onChanged: (value) {
//                               setState(() {
//                                 eval[subject] = double.tryParse(value) ?? 0.0;
//
//                               });
//                             },
//                             decoration: const InputDecoration(
// <<<<<<< HEAD
//                               hintText: 'Enter evaluation',
// =======
//                               hintText: 'Enter eval',
// >>>>>>> origin/master
//                             ),
//                           ),
//                         ),
//                       ],
//                     );
//                   }).toList(),
//                 ),
//
//                 const SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: () {
// <<<<<<< HEAD
//                     print(grades);
// =======
//                     print(grades); // Replace with your desired action
// >>>>>>> origin/master
//                   },
//                   child: const Text('Save '),
//                 ),
//               ],
//             ),
//           ),
//           ]),
//     );
//   }
// }
