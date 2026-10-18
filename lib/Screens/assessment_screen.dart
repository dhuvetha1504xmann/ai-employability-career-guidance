import 'package:flutter/material.dart';
import 'career_assessment_screen.dart';

class AssessmentScreen extends StatelessWidget {
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          "Skill Assessment",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 20),

            const Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.assessment,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Skill Assessment",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                "Choose a career field to assess your skills.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 30),

            _careerButton(
              context,
              "Software Developer",
              "Programming, DSA, SQL and problem solving",
              Icons.computer,
              Colors.blue,
            ),

            const SizedBox(height: 12),

            _careerButton(
              context,
              "Data Analyst",
              "Excel, SQL, Python, Statistics and Power BI",
              Icons.analytics,
              Colors.orange,
            ),

            const SizedBox(height: 12),

            _careerButton(
              context,
              "AI Engineer",
              "Python, Machine Learning and Artificial Intelligence",
              Icons.smart_toy,
              Colors.red,
            ),

            const SizedBox(height: 12),

            _careerButton(
              context,
              "Web Developer",
              "HTML, CSS, JavaScript and Web Development",
              Icons.web,
              Colors.purple,
            ),

            const SizedBox(height: 12),

            _careerButton(
              context,
              "Cyber Security Analyst",
              "Networking, Linux and Cyber Security",
              Icons.security,
              Colors.teal,
            ),
          ],
        ),
      ),
    );
  }

  Widget _careerButton(
      BuildContext context,
      String career,
      String description,
      IconData icon,
      Color iconColor,
      ) {
    return Card(
      elevation: 5,

      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),

        leading: CircleAvatar(
          backgroundColor: iconColor.withOpacity(0.15),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),

        title: Text(
          career,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CareerAssessmentScreen(
                career: career,
              ),
            ),
          );
        },
      ),
    );
  }
}