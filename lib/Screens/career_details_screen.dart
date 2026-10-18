import 'package:flutter/material.dart';

class CareerDetailsScreen extends StatelessWidget {
  final String career;

  const CareerDetailsScreen({
    super.key,
    required this.career,
  });

  Map<String, dynamic> getCareerData() {
    switch (career) {
      case "Software Developer":
        return {
          "icon": Icons.computer,
          "about":
          "Software Developers design, develop, test and maintain software applications for computers, mobile devices and organizations.",
          "skills":
          "• Python / Java / C++\n"
              "• Data Structures and Algorithms\n"
              "• SQL and Database Management\n"
              "• Object-Oriented Programming\n"
              "• Git and GitHub\n"
              "• Problem Solving",
          "roles":
          "• Software Developer\n"
              "• Application Developer\n"
              "• Backend Developer\n"
              "• Full Stack Developer",
          "path":
          "Learn Programming → Learn DSA → Build Projects → "
              "Learn Databases → Internship → Prepare for Placements",
        };

      case "Data Analyst":
        return {
          "icon": Icons.analytics,
          "about":
          "Data Analysts collect, clean and analyse data to identify useful patterns and help organizations make better business decisions.",
          "skills":
          "• Excel / Advanced Excel\n"
              "• SQL\n"
              "• Python\n"
              "• Statistics\n"
              "• Power BI / Tableau\n"
              "• Data Visualization",
          "roles":
          "• Data Analyst\n"
              "• Business Analyst\n"
              "• Reporting Analyst\n"
              "• Business Intelligence Analyst",
          "path":
          "Learn Excel → Learn SQL → Learn Statistics → "
              "Learn Power BI → Learn Python → Build Data Projects",
        };

      case "AI Engineer":
        return {
          "icon": Icons.smart_toy,
          "about":
          "AI Engineers develop intelligent systems using Artificial Intelligence, Machine Learning and Deep Learning techniques.",
          "skills":
          "• Python\n"
              "• Machine Learning\n"
              "• Deep Learning\n"
              "• Mathematics and Statistics\n"
              "• Neural Networks\n"
              "• TensorFlow / PyTorch",
          "roles":
          "• AI Engineer\n"
              "• Machine Learning Engineer\n"
              "• Deep Learning Engineer\n"
              "• AI Developer",
          "path":
          "Learn Python → Learn Mathematics → Machine Learning → "
              "Deep Learning → Build AI Projects → Internship",
        };

      case "Web Developer":
        return {
          "icon": Icons.web,
          "about":
          "Web Developers create and maintain websites and web applications using frontend and backend technologies.",
          "skills":
          "• HTML\n"
              "• CSS\n"
              "• JavaScript\n"
              "• React / Angular\n"
              "• Backend Development\n"
              "• APIs and Databases",
          "roles":
          "• Frontend Developer\n"
              "• Backend Developer\n"
              "• Full Stack Developer\n"
              "• Web Application Developer",
          "path":
          "Learn HTML → CSS → JavaScript → Frontend Framework → "
              "Backend → Database → Build Web Projects",
        };

      case "Cyber Security Analyst":
        return {
          "icon": Icons.security,
          "about":
          "Cyber Security Analysts protect computer systems, networks and data from cyber attacks and security threats.",
          "skills":
          "• Computer Networks\n"
              "• Linux\n"
              "• Cyber Security Fundamentals\n"
              "• Ethical Hacking\n"
              "• Threat Detection\n"
              "• Security Tools and SIEM",
          "roles":
          "• Cyber Security Analyst\n"
              "• Security Analyst\n"
              "• SOC Analyst\n"
              "• Information Security Analyst",
          "path":
          "Learn Networking → Linux → Security Fundamentals → "
              "Ethical Hacking → Security Tools → SOC Practice",
        };

      default:
        return {
          "icon": Icons.work,
          "about": "Career information is not available.",
          "skills": "Skills information is not available.",
          "roles": "Job role information is not available.",
          "path": "Learning path is not available.",
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = getCareerData();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: Text(career),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Career Icon
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.green,
                child: Icon(
                  data["icon"],
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Career Name
            Center(
              child: Text(
                career,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // About
            _buildSection(
              title: "About this Career",
              content: data["about"],
              icon: Icons.info_outline,
            ),

            // Skills
            _buildSection(
              title: "Required Skills",
              content: data["skills"],
              icon: Icons.star_outline,
            ),

            // Job Roles
            _buildSection(
              title: "Job Roles",
              content: data["roles"],
              icon: Icons.work_outline,
            ),

            // Career Path
            _buildSection(
              title: "Career Path",
              content: data["path"],
              icon: Icons.trending_up,
            ),

            const SizedBox(height: 20),

            // Back Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Back to Career Guidance"),
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

  Widget _buildSection({
    required String title,
    required String content,
    required IconData icon,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 15),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.green,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}