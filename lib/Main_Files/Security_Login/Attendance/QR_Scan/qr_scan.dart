// //ist code
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
//}
//2nd code
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
//       // backgroundColor: Colors.blue.shade900,
//       appBar: AppBar(
//         backgroundColor: Colors.blue.shade900,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),

//         title: const Text(
//           'Back',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//           ),
//         ),
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

//           // Mark Attendance Button
//           SizedBox(
//             width: 300,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue.shade900,
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               onPressed: () {
//                 _showAttendanceSuccessDialog(
//                   context,
//                   'Chanoddya Praveen',
//                   '25066',
//                   'Grade 10E',
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
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
//         final String code = barcodes.first.displayValue ?? barcodes.first.rawValue ?? '';
//         debugPrint('Barcode found! $code');
//         _screenOpened = true;

//         // Show success dialog when QR code is found
//         _showAttendanceSuccessDialog(
//           context,
//           'Chanoddya Praveen', // You can parse this from the QR code
//           '25066', // You can parse this from the QR code
//           'Grade 10E', // You can parse this from the QR code
//         );
//       }
//     }
//   }

//   void _showAttendanceSuccessDialog(BuildContext context, String studentName, String indexNumber, String grade) {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return AttendanceSuccessDialog(
//           studentName: studentName,
//           indexNumber: indexNumber,
//           grade: grade,
//           onClose: () {
//             Navigator.of(context).pop();
//             _screenWasClosed();
//           },
//         );
//       },
//     );
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

// // Separate Widget for Attendance Success Dialog
// class AttendanceSuccessDialog extends StatelessWidget {
//   final String studentName;
//   final String indexNumber;
//   final String grade;
//   final VoidCallback onClose;

//   const AttendanceSuccessDialog({
//     super.key,
//     required this.studentName,
//     required this.indexNumber,
//     required this.grade,
//     required this.onClose,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       icon: const Icon(
//         Icons.check_circle,
//         color: Colors.green,
//         size: 40,
//       ),
//       content: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text(
//             'Attendance marked successfully!',
//             style: TextStyle(
//               fontSize: 15,
//               color: Colors.green,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 16),
//           Text(
//             studentName,
//             style: const TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 8),
//           Text(
//             indexNumber,
//             style: const TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 8),
//           Text(
//             grade,
//             style: const TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//       actions: <Widget>[
//         Center(
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue.shade900,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             onPressed: onClose,
//             child:
//             const Text(
//               'Back To Home',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//       actionsAlignment: MainAxisAlignment.center,
//     );
//   }
// }
// final code
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Security_Login/Attendance/Mark_Attendance/manual_entry.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Security_Login/Login_Logout/security_login.dart';

class ScanAttendance extends StatefulWidget {
  const ScanAttendance({super.key});

  @override
  _ScanAttendanceState createState() => _ScanAttendanceState();
}

class _ScanAttendanceState extends State<ScanAttendance> {
  final MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Builder(
                    builder: (context) {
                      return const LoginScreen1();
                    }
                  ),
                ));
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Close button at top right
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              child: const Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),
                        ),

                        // Logout icon
                        const CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Icon(Icons.logout, color: Colors.red),
                          ),
                        ),
                        // Title
                        const Text(
                          'Are you sure to',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const Text(
                          'LogOut',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 30),

                        // Confirm button
                        SizedBox(
                          width: 150,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFF1B237E), // Deep blue color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                              Navigator.of(context)
                                  .pop(); // Navigate back (logout)
                            },
                            child: const Text(
                              'Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        title: const Text(
          'Back',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Scanner Container
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade900, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: MobileScanner(
                controller: cameraController,
                onDetect: _foundBarCode,
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Positioned(
            bottom: 1,
            child: Text(
              'Point the camera at student\'s QR code to mark attendance',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 30),

          // Mark Attendance Button
          SizedBox(
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                _showAttendanceSuccessDialog(
                  context,
                  'Chanoddya Praveen',
                  '25066',
                  'Grade 10E',
                );
              },
              child: const Text(
                'Mark Attendance',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Manual Entry button
          SizedBox(
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 231, 232, 235),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManualEntryScreen()),
                );
                debugPrint('Manual Entry button pressed');
              },
              child: Text(
                'Manual Entry',
                style: TextStyle(fontSize: 16, color: Colors.blue.shade900),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _foundBarCode(BarcodeCapture capture) {
    if (!_screenOpened) {
      final List<Barcode> barcodes = capture.barcodes;
      if (barcodes.isNotEmpty) {
        final String code =
            barcodes.first.displayValue ?? barcodes.first.rawValue ?? '';
        debugPrint('Barcode found! $code');
        _screenOpened = true;

        // Show success dialog when QR code is found
        _showAttendanceSuccessDialog(
          context,
          'Chanoddya Praveen', // You can parse this from the QR code
          '25066', // You can parse this from the QR code
          'Grade 10E', // You can parse this from the QR code
        );
      }
    }
  }

  void _showAttendanceSuccessDialog(BuildContext context, String studentName,
      String indexNumber, String grade) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AttendanceSuccessDialog(
          studentName: studentName,
          indexNumber: indexNumber,
          grade: grade,
          onClose: () {
            Navigator.of(context).pop();
            _screenWasClosed();
          },
        );
      },
    );
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }
}

// Separate Widget for Attendance Success Dialog
class AttendanceSuccessDialog extends StatelessWidget {
  final String studentName;
  final String indexNumber;
  final String grade;
  final VoidCallback onClose;

  const AttendanceSuccessDialog({
    super.key,
    required this.studentName,
    required this.indexNumber,
    required this.grade,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        Icons.check_circle,
        color: Colors.green,
        size: 40,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Attendance marked successfully!',
            style: TextStyle(
              fontSize: 15,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            studentName,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            indexNumber,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            grade,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade900,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: onClose,
            child: const Text(
              'Back To Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
