// import 'package:flutter/material.dart';

// class ManualEntryScreen extends StatelessWidget {
//   ManualEntryScreen({super.key});

//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _StudentIndexNumberController =
//       TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.blue.shade900,
//       appBar: AppBar(
//         backgroundColor: Colors.blue.shade900,
//         title: const Text('Manual Entry'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Center(
//             child: Text('Please enter Student Index Number',
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Colors.black,
//                 )),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextFormField(
//                     controller: _StudentIndexNumberController,
//                     style: const TextStyle(color: Colors.black87),
//                     decoration: InputDecoration(
//                       hintText: 'Student Index Number',
//                       hintStyle: const TextStyle(color: Colors.grey),
//                       prefixIcon: const Icon(Icons.person, color: Colors.grey),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide.none,
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide.none,
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide:
//                             const BorderSide(color: Colors.blue, width: 2),
//                       ),
//                       filled: true,
//                       fillColor: Colors.white,
//                     ),
//                     validator: (value) => value == null || value.isEmpty
//                         ? 'Please enter Student Index Number'
//                         : null,
//                   ),
//                   const SizedBox(height: 20),
//                 ],
//               ),
//             ),
//           ),
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
//                 // if (_formKey.currentState!.validate()) {
//                 //   showDialog(
//                 //     context: context,
//                 //     builder: (context) => AlertDialog(
//                 //       title: const Text('Attendance Marked'),
//                 //       content: Text(
//                 //         'Student Index Number: ${_StudentIndexNumberController.text}',
//                 //       ),
//                 //       actions: [
//                 //         TextButton(
//                 //           onPressed: () => Navigator.of(context).pop(),
//                 //           child: const Text('OK'),
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   );
//                 // }
//               },
//               child: const Text(
//                 'Mark Attendance',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//****************************************************************************************************************************** */
//2n code
import 'package:flutter/material.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Security_Login/Attendance/QR_Scan/qr_scan.dart';

class ManualEntryScreen extends StatelessWidget {
  ManualEntryScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _StudentIndexNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // ✅ Back navigation
          },
        ),
        title: const Text(
          'Scan Attendance',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Please enter Student Index Number',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _StudentIndexNumberController,
                    style: const TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: 'Student Index Number',
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.person, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter Student Index Number'
                        : null,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
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
                if (_formKey.currentState!.validate()) {
                  // Get the entered student index number
                  String indexNumber =
                      _StudentIndexNumberController.text.trim();

                  // Show the attendance success dialog
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AttendanceSuccessDialog(
                      studentName: _getStudentName(
                          indexNumber), // You can implement this method
                      indexNumber: indexNumber,
                      grade: _getStudentGrade(
                          indexNumber), // You can implement this method
                      onClose: () {
                        Navigator.of(context).pop(); // Close dialog
                        Navigator.of(context)
                            .pop(); // Go back to previous screen
                      },
                    ),
                  );
                }
              },
              child: const Text(
                'Mark Attendance',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to get student name based on index number
  // You should replace this with actual database lookup
  String _getStudentName(String indexNumber) {
    // This is just a sample - replace with your actual data lookup
    Map<String, String> studentNames = {
      '25066': 'Chanoddya Praveen',
      '25067': 'Kasun Perera',
      '25068': 'Nimal Silva',
      // Add more students as needed
    };
    return studentNames[indexNumber] ?? 'Unknown Student';
  }

  // Helper method to get student grade based on index number
  // You should replace this with actual database lookup
  String _getStudentGrade(String indexNumber) {
    // This is just a sample - replace with your actual data lookup
    Map<String, String> studentGrades = {
      '25066': 'Grade 10E',
      '25067': 'Grade 11A',
      '25068': 'Grade 12B',
      // Add more students as needed
    };
    return studentGrades[indexNumber] ?? 'Unknown Grade';
  }
}
