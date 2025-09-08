import 'package:flutter/material.dart';
import 'package:walisinghe_harischandra_college/Main_Files/Home/home.dart';
// import 'package:walisinghe_harischandra_college/Login_Home/Security_Login/login.dart';
import 'package:walisinghe_harischandra_college/splash_Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        // '/login': (context) => const LoginScreen(),
      },
    );
  }
}
