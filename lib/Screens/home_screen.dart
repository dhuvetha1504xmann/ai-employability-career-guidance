import 'package:flutter/material.dart';

import 'resume_screen.dart';
import 'interview_screen.dart';
import 'career_screen.dart';
import 'assessment_screen.dart';
import 'profile_screen.dart';
import 'progress_screen.dart';
import 'job_suggestions_screen.dart';
import 'ai_chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // --------------------------------------------------
  // FEATURE CARD
  // --------------------------------------------------
  Widget featureCard(
      IconData icon,
      String title,
      Color color,
      ) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: color.withValues(alpha: 0.15),
              child: Icon(
                icon,
                size: 32,
                color: color,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --------------------------------------------------
  // OPEN SCREEN
  // --------------------------------------------------
  void openScreen(
      BuildContext context,
      Widget screen,
      ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),

      // ==================================================
      // APP BAR
      // ==================================================
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text(
          "AI Career Guide",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                onPressed: () {
                  openScreen(
                    context,
                    const ProfileScreen(),
                  );
                },
              ),
            ),
          ),
        ],
      ),

      // ==================================================
      // HOME CONTENT
      // ==================================================
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // WELCOME
            const Text(
              "👋 Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Let's build your future with AI",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            // ==================================================
            // CAREER READINESS CARD
            // ==================================================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Text(
                    "Career Readiness",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "0%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // ==================================================
            // FEATURE CARDS
            // ==================================================
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: [

                // ------------------------------------------------
                // 1. RESUME ANALYZER
                // ------------------------------------------------
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    openScreen(
                      context,
                      const ResumeAnalyzerScreen(),
                    );
                  },
                  child: featureCard(
                    Icons.description,
                    "Resume Analyzer",
                    Colors.blue,
                  ),
                ),

                // ------------------------------------------------
                // 2. AI INTERVIEW
                // ------------------------------------------------
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    openScreen(
                      context,
                      const InterviewScreen(),
                    );
                  },
                  child: featureCard(
                    Icons.mic,
                    "AI Interview",
                    Colors.red,
                  ),
                ),

                // ------------------------------------------------
                // 3. CAREER GUIDANCE
                // ------------------------------------------------
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    openScreen(
                      context,
                      const CareerScreen(),
                    );
                  },
                  child: featureCard(
                    Icons.school,
                    "Career Guidance",
                    Colors.green,
                  ),
                ),

                // ------------------------------------------------
                // 4. SKILL ASSESSMENT
                // ------------------------------------------------
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    openScreen(
                      context,
                      const AssessmentScreen(),
                    );
                  },
                  child: featureCard(
                    Icons.quiz,
                    "Skill Assessment",
                    Colors.orange,
                  ),
                ),

                // ------------------------------------------------
                // 5. PROGRESS
                // ------------------------------------------------
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    openScreen(
                      context,
                      const ProgressScreen(),
                    );
                  },
                  child: featureCard(
                    Icons.show_chart,
                    "Progress",
                    Colors.purple,
                  ),
                ),

                // ------------------------------------------------
                // 6. JOB SUGGESTIONS
                // ------------------------------------------------
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    openScreen(
                      context,
                      const JobSuggestionsScreen(),
                    );
                  },
                  child: featureCard(
                    Icons.work,
                    "Job Suggestions",
                    Colors.teal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // ==================================================
      // BOTTOM NAVIGATION
      // ==================================================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,

        onTap: (index) {
          if (index == 0) {
            // Already on Home
            return;
          }

          if (index == 1) {
            // AI CHAT
            openScreen(
              context,
              const AIChatScreen(),
            );
          }

          if (index == 2) {
            // PROFILE
            openScreen(
              context,
              const ProfileScreen(),
            );
          }
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy),
            label: "AI Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}