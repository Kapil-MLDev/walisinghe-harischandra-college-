// // final code 
import 'package:flutter/material.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Parent_Login/Home/Attendance/attendance.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Parent_Login/Home/Exam_Results/exam_results.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Parent_Login/Home/Notification/notification.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Parent_Login/Login_Logout/parent_login.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false, // Prevents dismissing by tapping outside
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
                                backgroundColor: const Color(0xFF1B237E), // Deep blue color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder: (context) => const LoginScreen(), // make sure your class is named ParentLogin
                                ));
                                // Navigator.of(context).pop(); // Close the dialog
                                // Navigator.of(context).pop(); // Navigate back (logout)
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
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // School Logo
            Image.asset(
              'assets/splash screen/logo.png',
              width: 100,
              height: 100,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.school,
                  size: 100,
                  color: Colors.white,
                );
              },
            ),
            const SizedBox(height: 30),

            // Student Info
            const Text(
              'Welcome, Imesha Sewwandi',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const Text(
              'Grade 10 E',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const Text(
              '25066',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 20),

            // Exam Results Card
            SizedBox(
              width: 220,
              child: Card(
                child: ListTile(
                  title: const Text(
                    'Exam Results',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExamResults()),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Attendance Card
            SizedBox(
              width: 220,
              child: Card(
                child: ListTile(
                  title: const Text(
                    'Attendance',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AttendancePage()),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Notifications Card
            SizedBox(
              width: 220,
              child: Card(
                child: ListTile(
                  title: const Icon(Icons.notifications, color: Colors.red),
                  leading: const Text(
                    'Notifications',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationPage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//last edited file