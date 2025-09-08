// import 'package:flutter/material.dart';
// import 'package:walisinghe_harischandra_college/Main_Files/Parent_Login/Home/Attendance/attendance.dart';
// import 'package:walisinghe_harischandra_college/Main_Files/Parent_Login/Home/Exam_Results/exam_results.dart';
// import 'package:walisinghe_harischandra_college/Main_Files/Parent_Login/Home/Notification/notification.dart';

// class StudentDetails extends StatelessWidget {
//   const StudentDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue.shade900,
//       appBar: AppBar(
//         backgroundColor: Colors.blue.shade900,
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.more_vert, color: Colors.white),
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AlertDialog(
//                     icon: CircleAvatar(
//                       radius: 32,
//                       backgroundColor: Colors.red,
//                       child: const CircleAvatar(
//                         backgroundColor: Colors.white,
//                         radius: 30,
//                         child: Icon(Icons.logout, color: Colors.red),
//                       ),
//                     ),
//                     content: const Text('Are you sure you want to Log Out',textAlign: TextAlign.center,style: TextStyle(color: Colors.red,)),
//                           actions: <Widget>[
//         Center(
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue.shade900,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: 
//             const Text(
//               'Confirm',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//       actionsAlignment: MainAxisAlignment.center,
//                   //   actions: [
//                   //     TextButton(
//                   //       onPressed: () {
//                   //         // Log out or perform another action
//                   //         Navigator.pop(context);
//                   //       },
//                   //       child: const Text('Confirm'),
//                   //     ),
//                   //   ],
//                   // );
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // School Logo
//             Image.asset(
//               'assets/splash screen/logo.png',
//               width: 100,
//               height: 100,
//               errorBuilder: (context, error, stackTrace) {
//                 return const Icon(
//                   Icons.school,
//                   size: 100,
//                   color: Colors.white,
//                 );
//               },
//             ),
//             const SizedBox(height: 30),

//             // Student Info
//             const Text(
//               'Welcome, Imesha Sewwandi',
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 letterSpacing: 1.2,
//               ),
//             ),
//             const Text(
//               'Grade 10 E',
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 letterSpacing: 1.2,
//               ),
//             ),
//             const Text(
//               '25066',
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 letterSpacing: 1.2,
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Exam Results Card
//             SizedBox(
//               width: 220,
//               child: Card(
//                 child: ListTile(
//                   // leading: const Icon(Icons.assignment, color: Colors.blue),
//                   title: const Text(
//                     'Exam Results',
//                     style: TextStyle(color: Colors.black, fontSize: 15),
//                   ),
//                   trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ExamResults()),
//                     );
//                   },
//                 ),
//               ),
//             ),

//             const SizedBox(height: 15),

//             // Attendance Card
//             SizedBox(
//               width: 220,
//               child: Card(
//                 child: ListTile(
//                   // leading: const Icon(Icons.check_circle, color: Colors.green),
//                   title: const Text(
//                     'Attendance',
//                     style: TextStyle(color: Colors.black, fontSize: 15),
//                   ),
//                   trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const AttendancePage()),
//                     );
//                   },
//                 ),
//               ),
//             ),

//             const SizedBox(height: 15),

//             // Notifications Card
//             SizedBox(
//               width: 220,
//               child: Card(
//                 child: ListTile(
//                   leading: const Text(
//                     'Notifications',
//                     style: TextStyle(color: Colors.black, fontSize: 15),
//                   ),
//                   title: const Icon(Icons.notifications, color: Colors.red),
//                   trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const NotificationPage()),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
