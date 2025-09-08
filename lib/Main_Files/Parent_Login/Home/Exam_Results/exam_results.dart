import 'package:flutter/material.dart';

class ExamResults extends StatelessWidget {
  const ExamResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        titleSpacing: -15,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined,
              color: Colors.white, size: 20),
          onPressed: () {
            Navigator.pop(context); // ✅ Back navigation
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
      body: SingleChildScrollView(
        // ✅ makes it scrollable
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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

              // ✅ First Term Test
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Term Test',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('ICT : 89', style: TextStyle(fontSize: 14)),
                    Text('Maths : 76', style: TextStyle(fontSize: 14)),
                    Text('Science : 76', style: TextStyle(fontSize: 14)),
                    Text('English : 76', style: TextStyle(fontSize: 14)),
                    Text('Physics : 76', style: TextStyle(fontSize: 14)),
                    Text('History : 76', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 8),
                    Text(
                      'Total : ***',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // ✅ Second Term Test
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.green.shade200),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Second Term Test',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('ICT : 80', style: TextStyle(fontSize: 14)),
                    Text('Maths : 76', style: TextStyle(fontSize: 14)),
                    Text('Science : 76', style: TextStyle(fontSize: 14)),
                    Text('English : 76', style: TextStyle(fontSize: 14)),
                    Text('Physics : 76', style: TextStyle(fontSize: 14)),
                    Text('History : 76', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 8),
                    Text(
                      'Total : ***',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
