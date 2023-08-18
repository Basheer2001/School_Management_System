// import 'package:flutter/material.dart';
// import 'package:project_one/ui/student_screens/custom_bar_button.dart';

// class CustomTabBarView extends StatefulWidget {
//   @override
//   _CustomTabBarViewState createState() => _CustomTabBarViewState();
// }

// class _CustomTabBarViewState extends State<CustomTabBarView>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Tab Bar View'),
//       ),
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               CustomTabButton(
//                 text: 'Tab 1',
//                 isSelected: _tabController.index == 0,
//                 onTap: () {
//                   setState(() {
//                     _tabController.animateTo(0);
//                   });
//                 },
//               ),
//               CustomTabButton(
//                 text: 'Tab 2',
//                 isSelected: _tabController.index == 1,
//                 onTap: () {
//                   setState(() {
//                     _tabController.animateTo(1);
//                   });
//                 },
//               ),
//               CustomTabButton(
//                 text: 'Tab 3',
//                 isSelected: _tabController.index == 2,
//                 onTap: () {
//                   setState(() {
//                     _tabController.animateTo(2);
//                   });
//                 },
//               ),
//             ],
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 Container(color: Colors.red),
//                 Container(color: Colors.green),
//                 Container(color: Colors.blue),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// CustomTabButton(
//                   text: 'Mon',
//                   textTwo: '2',
//                   isSelected: _tabController.index == 1,
//                   onTap: () {
//                     setState(() {
//                       _tabController.animateTo(1);
//                     });
//                   },
//                 ),
//                 CustomTabButton(
//                   text: 'Tue',
//                   textTwo: '3',
//                   isSelected: _tabController.index == 2,
//                   onTap: () {
//                     setState(() {
//                       _tabController.animateTo(2);
//                     });
//                   },
//                 ),
//                 CustomTabButton(
//                   text: 'Wed',
//                   textTwo: '4',
//                   isSelected: _tabController.index == 3,
//                   onTap: () {
//                     setState(() {
//                       _tabController.animateTo(3);
//                     });
//                   },
//                 ),
//                 CustomTabButton(
//                   text: 'Thu',
//                   textTwo: '5',
//                   isSelected: _tabController.index == 4,
//                   onTap: () {
//                     setState(() {
//                       _tabController.animateTo(4);
//                     });
//                   },
//                 ),