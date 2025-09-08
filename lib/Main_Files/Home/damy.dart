// // // import 'package:flutter/material.dart';
// // // import 'package:mobile_scanner/mobile_scanner.dart';

// // // class ScanAttendance extends StatefulWidget {
// // //   const ScanAttendance({super.key});

// // //   @override
// // //   _ScanAttendanceState createState() => _ScanAttendanceState();
// // // }

// // // class _ScanAttendanceState extends State<ScanAttendance> {
// // //   final MobileScannerController cameraController = MobileScannerController();
// // //   bool _screenOpened = false;
// // //   bool _torchOn = false;
// // //   bool _isFrontCamera = false;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Scan Attendance'),
// // //         backgroundColor: Colors.blue.shade900,
// // //         actions: [
// // //           IconButton(
// // //             color: Colors.white,
// // //             icon: Icon(
// // //               _torchOn ? Icons.flash_on : Icons.flash_off,
// // //               color: _torchOn ? Colors.green : Colors.red,
// // //             ),
// // //             onPressed: () async {
// // //               await cameraController.toggleTorch();
// // //               setState(() {
// // //                 _torchOn = !_torchOn;
// // //               });
// // //             },
// // //           ),
// // //           IconButton(
// // //             color: Colors.white,
// // //             icon: Icon(
// // //               _isFrontCamera ? Icons.camera_front : Icons.camera_rear,
// // //             ),
// // //             onPressed: () async {
// // //               await cameraController.switchCamera();
// // //               setState(() {
// // //                 _isFrontCamera = !_isFrontCamera;
// // //               });
// // //             },
// // //           ),
// // //         ],
// // //       ),
// // //       body: Center(
// // //         child: SizedBox(
// // //           height: 200,
// // //           width: 200,
// // //           child: MobileScanner(
// // //             controller: cameraController,
// // //             onDetect: _foundBarCode,
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   // Fixed callback signature - now takes BarcodeCapture instead of separate parameters
// // //   void _foundBarCode(BarcodeCapture capture) {
// // //     if (!_screenOpened) {
// // //       final List<Barcode> barcodes = capture.barcodes;
// // //       if (barcodes.isNotEmpty) {
// // //         final String code =
// // //             barcodes.first.displayValue ?? barcodes.first.rawValue ?? '';
// // //         debugPrint('Barcode found! $code');
// // //         _screenOpened = true;
// // //         Navigator.push(
// // //           context,
// // //           MaterialPageRoute(
// // //             builder: (context) => FoundCodeScreen(
// // //               screenClosed: _screenWasClosed,
// // //               value: code,
// // //             ),
// // //           ),
// // //         );
// // //       }
// // //     }
// // //   }

// // //   void _screenWasClosed() {
// // //     _screenOpened = false;
// // //   }

// // //   @override
// // //   void dispose() {
// // //     cameraController.dispose();
// // //     super.dispose();
// // //   }
// // // }

// // // class FoundCodeScreen extends StatelessWidget {
// // //   final VoidCallback screenClosed;
// // //   final String value;

// // //   const FoundCodeScreen({
// // //     super.key,
// // //     required this.screenClosed,
// // //     required this.value,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Found Code'),
// // //       ),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Padding(
// // //               padding: const EdgeInsets.all(16.0),
// // //               child: Text(
// // //                 'Found Code: $value',
// // //                 style: const TextStyle(fontSize: 18),
// // //                 textAlign: TextAlign.center,
// // //               ),
// // //             ),
// // //             ElevatedButton(
// // //               onPressed: () {
// // //                 screenClosed();
// // //                 Navigator.pop(context);
// // //               },
// // //               child: const Text('Close'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // // *************************************************************
// // // import 'package:flutter/material.dart';
// // // import 'package:mobile_scanner/mobile_scanner.dart';

// // // class ScanAttendance extends StatefulWidget {
// // //   const ScanAttendance({super.key});

// // //   @override
// // //   _ScanAttendanceState createState() => _ScanAttendanceState();
// // // }

// // // class _ScanAttendanceState extends State<ScanAttendance> {
// // //   final MobileScannerController cameraController = MobileScannerController();
// // //   bool _screenOpened = false;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Scan Attendance'),
// // //         backgroundColor: Colors.blue.shade900,
// // //       ),
// // //       body: Center(
// // //         child: Container(
// // //             height: 250,
// // //             width: 250,
// // //           child: MobileScanner(
// // //             controller: cameraController,
// // //             onDetect: _foundBarCode,
// // //           ),
// // //         ),

// // //       ),
// // //     );
// // //   }
// // //    const SizedBox(height: 30),
// // //                 const Text(
// // //                   'Point the camera at students QR code to mark attendance',
// // //                   style: TextStyle(
// // //                     fontSize: 12,
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.white,
// // //                     letterSpacing: 1.2,
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 30),
// // //                 const Card(
// // //                   child: ElevatedButton(
// // //                     onPressed: () {},
// // //                     child: const Text('Mark Attendance'),
// // //                   ),
// // //                 ),

// // //   void _foundBarCode(BarcodeCapture capture) {
// // //     if (!_screenOpened) {
// // //       final List<Barcode> barcodes = capture.barcodes;
// // //       if (barcodes.isNotEmpty) {
// // //         final String code =
// // //             barcodes.first.displayValue ?? barcodes.first.rawValue ?? '';
// // //         debugPrint('Barcode found! $code');
// // //         _screenOpened = true;
// // //         Navigator.push(
// // //           context,
// // //           MaterialPageRoute(
// // //             builder: (context) => FoundCodeScreen(
// // //               screenClosed: _screenWasClosed,
// // //               value: code,
// // //             ),
// // //           ),
// // //         );
// // //       }
// // //     }
// // //   }

// // //   void _screenWasClosed() {
// // //     _screenOpened = false;
// // //   }

// // //   @override
// // //   void dispose() {
// // //     cameraController.dispose();
// // //     super.dispose();
// // //   }
// // // }

// // // class FoundCodeScreen extends StatelessWidget {
// // //   final VoidCallback screenClosed;
// // //   final String value;

// // //   const FoundCodeScreen({
// // //     super.key,
// // //     required this.screenClosed,
// // //     required this.value,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Found Code'),
// // //       ),
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Padding(
// // //               padding: const EdgeInsets.all(16.0),
// // //               child: Text(
// // //                 'Found Code: $value',
// // //                 style: const TextStyle(fontSize: 18),
// // //                 textAlign: TextAlign.center,
// // //               ),
// // //             ),
// // //             ElevatedButton(
// // //               onPressed: () {
// // //                 screenClosed();
// // //                 Navigator.pop(context);
// // //               },
// // //               child: const Text('Close'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:mobile_scanner/mobile_scanner.dart';
// // import 'package:walisinghe_harischandra_college/Main_Files/Security_Login/Attendance/Mark_Attendance/mark_attendance.dart';
// // import 'package:walisinghe_harischandra_college/Main_Files/Security_Login/Attendance/Mark_Attendance/manual_entry.dart';

// // class ScanAttendance extends StatefulWidget {
// //   const ScanAttendance({super.key});

// //   @override
// //   _ScanAttendanceState createState() => _ScanAttendanceState();
// // }

// // class _ScanAttendanceState extends State<ScanAttendance> {
// //   final MobileScannerController cameraController = MobileScannerController();
// //   bool _screenOpened = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Scan Attendance'),
// //         backgroundColor: Colors.blue.shade900,
// //       ),
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           // Scanner Container
// //           Container(
// //             height: 250,
// //             width: 250,
// //             decoration: BoxDecoration(
// //               border: Border.all(color: Colors.blue.shade900, width: 2),
// //               borderRadius: BorderRadius.circular(12),
// //             ),
// //             child: MobileScanner(
// //               controller: cameraController,
// //               onDetect: _foundBarCode,
// //             ),
// //           ),

// //           const SizedBox(height: 30),

// //           // Instruction Text
// //           const Text(
// //             'Point the camera at student\'s QR code to mark attendance',
// //             style: TextStyle(
// //               fontSize: 14,
// //               fontWeight: FontWeight.bold,
// //               color: Colors.black87,
// //               letterSpacing: 1.2,
// //             ),
// //             textAlign: TextAlign.center,
// //           ),

// //           const SizedBox(height: 30),

// //           // Mark Attendance Button
// //           SizedBox(
// //             width: 300,
// //             child: ElevatedButton(
// //               style: ElevatedButton.styleFrom(
// //                 backgroundColor: Colors.blue.shade900,
// //                 padding:
// //                     const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(8),
// //                 ),
// //               ),
// //               onPressed: () {
// //                 // Navigator.push(
// //                 //   context,
// //                 //   MaterialPageRoute(
// //                 //       builder: (context) => const MarkAttendanceScreen(
// //                 //       )),
// //                 // );
// //                 // debugPrint('Mark Attendance button pressed');
// //                     onPressed: () {
// //       showDialog(
// //         context: context,
// //         builder: (BuildContext context) {
// //           // Return the dialog widget here
// //           return AlertDialog(
// //             title: const Text('Popup Title'),
// //             content: const Text('Attendance marked successfully.', style: TextStyle(fontSize: 16),selectionColor: Colors.green ),
// //                 ),
// //             actions: <Widget>[
// //               TextButton(
// //                 onPressed: () {
// //                   Navigator.of(context).pop(); // Close the dialog
// //                 },
// //                 child: const Text('Close'),
// //               ),
// //             ],
// //           );
// //         },
// //       );
// //     }
// //               },
// //               child: const Text(
// //                 'Mark Attendance',
// //                 style: TextStyle(fontSize: 16, color: Colors.white),
// //               ),
// //             ),
// //           ),

// //           const SizedBox(height: 16),

// //           // Manual Entry button
// //           SizedBox(
// //             width: 300,
// //             child: ElevatedButton(
// //               style: ElevatedButton.styleFrom(
// //                 backgroundColor: const Color.fromARGB(255, 231, 232, 235),
// //                 padding:
// //                     const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(8),
// //                 ),
// //               ),
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                       builder: (context) => const ManualEntryScreen()),
// //                 );
// //                 debugPrint('Mark Attendance button pressed');
// //               },
// //               child: Text(
// //                 'Mark Attendance',
// //                 style: TextStyle(fontSize: 16, color: Colors.blue.shade900),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   void _foundBarCode(BarcodeCapture capture) {
// //     if (!_screenOpened) {
// //       final List<Barcode> barcodes = capture.barcodes;
// //       if (barcodes.isNotEmpty) {
// //         final String code =
// //             barcodes.first.displayValue ?? barcodes.first.rawValue ?? '';
// //         debugPrint('Barcode found! $code');
// //         _screenOpened = true;
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) => FoundCodeScreen(
// //               screenClosed: _screenWasClosed,
// //               value: code,
// //             ),
// //           ),
// //         );
// //       }
// //     }
// //   }

// //   void _screenWasClosed() {
// //     _screenOpened = false;
// //   }

// //   @override
// //   void dispose() {
// //     cameraController.dispose();
// //     super.dispose();
// //   }
// // }

// // class FoundCodeScreen extends StatelessWidget {
// //   final VoidCallback screenClosed;
// //   final String value;

// //   const FoundCodeScreen({
// //     super.key,
// //     required this.screenClosed,
// //     required this.value,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Found Code'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.all(16.0),
// //               child: Text(
// //                 'Found Code: $value',
// //                 style: const TextStyle(fontSize: 18),
// //                 textAlign: TextAlign.center,
// //               ),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {
// //                 screenClosed();
// //                 Navigator.pop(context);
// //               },
// //               child: const Text('Close'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:walisinghe_harischandra_college/Main_Files/Security_Login/Attendance/Mark_Attendance/manual_entry.dart';

// class ScanAttendance extends StatefulWidget {
//   const ScanAttendance({super.key});

//   @override
//   _ScanAttendanceState createState() => _ScanAttendanceState();
// }

// class _ScanAttendanceState extends State<ScanAttendance> {
//   final MobileScannerController cameraController = MobileScannerController();
//   bool _screenOpened = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Scan Attendance'),
//         backgroundColor: Colors.blue.shade900,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Scanner Container
//           Container(
//             height: 250,
//             width: 250,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.blue.shade900, width: 2),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: MobileScanner(
//               controller: cameraController,
//               onDetect: _foundBarCode,
//             ),
//           ),

//           const SizedBox(height: 30),

//           // Instruction Text
//           const Text(
//             'Point the camera at student\'s QR code to mark attendance',
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//               letterSpacing: 1.2,
//             ),
//             textAlign: TextAlign.center,
//           ),

//           const SizedBox(height: 30),

//           // Mark Attendance Button and use popup
//           // SizedBox(
//           //   width: 300,
//           //   child: ElevatedButton(
//           //     style: ElevatedButton.styleFrom(
//           //       backgroundColor: Colors.blue.shade900,
//           //       padding:
//           //           const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//           //       shape: RoundedRectangleBorder(
//           //         borderRadius: BorderRadius.circular(8),
//           //       ),
//           //     ),
//           //     onPressed: () {
//           //       showDialog(
//           //         context: context,
//           //         builder: (BuildContext context) {
//           //           return AlertDialog(
//           //             icon: const Icon(
//           //               Icons.check_circle,
//           //               color: Colors.green,
//           //               size: 40,
//           //             ),
//           //             content: const Column(
//           //               mainAxisAlignment: MainAxisAlignment.center,
//           //               mainAxisSize: MainAxisSize.min,
//           //               children: [
//           //                 Text(
//           //                   'Attendance marked successfully!',
//           //                   style: TextStyle(
//           //                       fontSize: 15,
//           //                       color: Colors.green,
//           //                       fontWeight: FontWeight.bold),
//           //                 ),
//           //                 SizedBox(height: 8),
//           //                 Text(
//           //                   'Chanoddya Praveen',
//           //                   style: TextStyle(
//           //                       fontSize: 16,
//           //                       color: Colors.black,
//           //                       fontWeight: FontWeight.bold),
//           //                 ),
//           //                 SizedBox(height: 8),
//           //                 Text(
//           //                   '25066',
//           //                   style: TextStyle(
//           //                       fontSize: 16,
//           //                       color: Colors.black,
//           //                       fontWeight: FontWeight.bold),
//           //                 ),
//           //                 SizedBox(height: 8),
//           //                 Text(
//           //                   'Grade 10E',
//           //                   style: TextStyle(
//           //                       fontSize: 16,
//           //                       color: Colors.black,
//           //                       fontWeight: FontWeight.bold),
//           //                 ),
//           //               ],
//           //             ),
//           //             actions: <Widget>[
//           //               TextButton(
//           //                 onPressed: () {
//           //                   Navigator.of(context).pop(); // Close the dialog
//           //                 },
//           //                 child: Center(
//           //                   child: ElevatedButton(
//           //                     style: ElevatedButton.styleFrom(
//           //                       backgroundColor: Colors.blue.shade900,
//           //                       padding: const EdgeInsets.symmetric(
//           //                           horizontal: 20, vertical: 12),
//           //                       shape: RoundedRectangleBorder(
//           //                         borderRadius: BorderRadius.circular(8),
//           //                       ),
//           //                     ),
//           //                     onPressed: () {
//           //                       Navigator.of(context).pop(); // Close the dialog
//           //                     },
//           //                     child: const Text(
//           //                       'Back To Home',
//           //                       style: TextStyle(color: Colors.white),
//           //                     ),
//           //                   ),
//           //                 ),
//           //               ),
//           //             ],
//           //           );
//           //         },
//           //       );
//           //     },
//           SizedBox(
//             width: 300,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue.shade900,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       icon: const Icon(
//                         Icons.check_circle,
//                         color: Colors.green,
//                         size: 40,
//                       ),
//                       content: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment
//                             .center, // Added this for horizontal centering
//                         children: [
//                           Title(
//                             color: Colors.blue.shade900,
//                             child: const Text('Attendance marked successfully!'),
//                           ),
//                           const Text(
//                             'Attendance marked successfully!',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.green,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center, // Center the text
//                           ),
//                           const SizedBox(height: 8),
//                           const Text(
//                             'Chanoddya Praveen',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center, // Center the text
//                           ),
//                           const SizedBox(height: 8),
//                           const Text(
//                             '25066',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center, // Center the text
//                           ),
//                           const SizedBox(height: 8),
//                           const Text(
//                             'Grade 10E',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center, // Center the text
//                           ),
//                         ],
//                       ),
//                       actions: <Widget>[
//                         Center(
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue.shade900,
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 12),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             onPressed: () {
//                               Navigator.of(context).pop(); // Close the dialog
//                             },
//                             child: const Text(
//                               'Back To Home',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                       actionsAlignment:
//                           MainAxisAlignment.center, // Center the actions
//                     );
//                   },
//                 );
//               },
//               child: const Text(
//                 'Mark Attendance',
//                 style: TextStyle(fontSize: 16, color: Colors.white),
//               ),
//             ),
//           ),

//           const SizedBox(height: 16),

//           // Manual Entry button
//           SizedBox(
//             width: 300,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 231, 232, 235),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ManualEntryScreen()),
//                 );
//                 debugPrint('Manual Entry button pressed');
//               },
//               child: Text(
//                 'Manual Entry',
//                 style: TextStyle(fontSize: 16, color: Colors.blue.shade900),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _foundBarCode(BarcodeCapture capture) {
//     if (!_screenOpened) {
//       final List<Barcode> barcodes = capture.barcodes;
//       if (barcodes.isNotEmpty) {
//         final String code =
//             barcodes.first.displayValue ?? barcodes.first.rawValue ?? '';
//         debugPrint('Barcode found! $code');
//         _screenOpened = true;
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => FoundCodeScreen(
//               screenClosed: _screenWasClosed,
//               value: code,
//             ),
//           ),
//         );
//       }
//     }
//   }

//   void _screenWasClosed() {
//     _screenOpened = false;
//   }

//   @override
//   void dispose() {
//     cameraController.dispose();
//     super.dispose();
//   }
// }

// class FoundCodeScreen extends StatelessWidget {
//   final VoidCallback screenClosed;
//   final String value;

//   const FoundCodeScreen({
//     super.key,
//     required this.screenClosed,
//     required this.value,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Found Code'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 'Found Code: $value',
//                 style: const TextStyle(fontSize: 18),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 screenClosed();
//                 Navigator.pop(context);
//               },
//               child: const Text('Close'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
