// import 'package:flutter/material.dart';
// import 'package:project_one/Attendance/check_attendance/st_list.dart';
// import 'package:project_one/ui/admin+owner_screens/add_students.dart';
// class ViewStudents extends StatelessWidget{
//   const ViewStudents({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           PopupMenuButton(
//             child: Icon(Icons.more_vert),
//             itemBuilder: (context){return[
//               PopupMenuItem<int>(value: 0, child: Text('Delet')),

//             ];},
//             onSelected: (value){

//             },

//           )
//         ],
//       ),
//       body: Container(
//         color: Colors.white,
//         height: double.infinity,
//         child: Stack(
//             children: [
//           StudentsList(),
//           Positioned(
//             bottom: 20,
//             right: 20,
//             child: ElevatedButton(

//                 onPressed: (){

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => Addstudents()),
//                   );

//                 },
//                 child: Icon(Icons.add)
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }