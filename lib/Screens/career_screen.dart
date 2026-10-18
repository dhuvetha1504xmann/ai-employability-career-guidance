import 'package:flutter/material.dart';
import 'career_details_screen.dart';

class CareerScreen extends StatelessWidget {
  const CareerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          "Career Guidance",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Career Guidance Icon
            const Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.school,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Page Title
            const Center(
              child: Text(
                "Career Guidance",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Description
            const Center(
              child: Text(
                "Choose a career path based on your interests and skills.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // SOFTWARE DEVELOPER
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.computer,
                  color: Colors.blue,
                ),
                title: const Text(
                  "Software Developer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Design and develop software applications.",
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CareerDetailsScreen(
                        career: "Software Developer",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // DATA ANALYST
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.analytics,
                  color: Colors.orange,
                ),
                title: const Text(
                  "Data Analyst",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Analyse data and create business insights.",
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CareerDetailsScreen(
                        career: "Data Analyst",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // AI ENGINEER
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.smart_toy,
                  color: Colors.red,
                ),
                title: const Text(
                  "AI Engineer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Develop Artificial Intelligence applications.",
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CareerDetailsScreen(
                        career: "AI Engineer",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // WEB DEVELOPER
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.web,
                  color: Colors.purple,
                ),
                title: const Text(
                  "Web Developer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Build responsive websites and web apps.",
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CareerDetailsScreen(
                        career: "Web Developer",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // CYBER SECURITY ANALYST
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.security,
                  color: Colors.teal,
                ),
                title: const Text(
                  "Cyber Security Analyst",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "Protect systems from cyber attacks.",
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CareerDetailsScreen(
                        career: "Cyber Security Analyst",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            // BACK TO HOME BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Back to Home"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}