import 'package:flutter/material.dart';
import 'progress_data.dart';

class CareerAssessmentScreen extends StatefulWidget {
  final String career;

  const CareerAssessmentScreen({
    super.key,
    required this.career,
  });

  @override
  State<CareerAssessmentScreen> createState() =>
      _CareerAssessmentScreenState();
}

class _CareerAssessmentScreenState
    extends State<CareerAssessmentScreen> {
  int currentQuestion = 0;
  int score = 0;

  late List<Map<String, dynamic>> questions;

  // Stores the skills of incorrectly answered questions
  List<String> wrongSkills = [];

  @override
  void initState() {
    super.initState();
    questions = getQuestionsForCareer(widget.career);
  }

  // ============================================================
  // QUESTIONS FOR EACH CAREER
  // ============================================================

  List<Map<String, dynamic>> getQuestionsForCareer(String career) {
    switch (career) {
    // ========================================================
    // SOFTWARE DEVELOPER
    // ========================================================

      case "Software Developer":
        return [
          {
            "question":
            "Which data structure follows the LIFO principle?",
            "options": [
              "Queue",
              "Stack",
              "Array",
              "Linked List"
            ],
            "answer": "Stack",
            "skill": "Data Structures"
          },
          {
            "question":
            "Which SQL command is used to retrieve data?",
            "options": [
              "INSERT",
              "UPDATE",
              "SELECT",
              "DELETE"
            ],
            "answer": "SELECT",
            "skill": "SQL"
          },
          {
            "question": "What does OOP stand for?",
            "options": [
              "Object Oriented Programming",
              "Online Object Processing",
              "Object Operation Program",
              "Open Oriented Programming"
            ],
            "answer": "Object Oriented Programming",
            "skill": "OOP"
          },
          {
            "question":
            "Which algorithm is efficient for searching a sorted array?",
            "options": [
              "Linear Search",
              "Binary Search",
              "Bubble Sort",
              "Selection Sort"
            ],
            "answer": "Binary Search",
            "skill": "Algorithms"
          },
          {
            "question":
            "Which language is widely used for software development?",
            "options": [
              "Python",
              "HTML",
              "CSS",
              "XML"
            ],
            "answer": "Python",
            "skill": "Programming"
          },
          {
            "question":
            "Which tool is commonly used for version control?",
            "options": [
              "Git",
              "Excel",
              "PowerPoint",
              "Photoshop"
            ],
            "answer": "Git",
            "skill": "Version Control"
          },
          {
            "question": "What is debugging?",
            "options": [
              "Designing a website",
              "Finding and fixing errors",
              "Creating a database",
              "Writing documentation"
            ],
            "answer": "Finding and fixing errors",
            "skill": "Debugging"
          },
          {
            "question":
            "Which of the following is a relational database?",
            "options": [
              "MySQL",
              "MongoDB",
              "Redis",
              "Firebase Storage"
            ],
            "answer": "MySQL",
            "skill": "Database"
          },
          {
            "question":
            "Which concept allows a class to have multiple forms?",
            "options": [
              "Inheritance",
              "Encapsulation",
              "Polymorphism",
              "Abstraction"
            ],
            "answer": "Polymorphism",
            "skill": "OOP"
          },
          {
            "question":
            "What is the main purpose of an algorithm?",
            "options": [
              "To solve a problem systematically",
              "To design graphics",
              "To store images",
              "To create presentations"
            ],
            "answer": "To solve a problem systematically",
            "skill": "Problem Solving"
          },
        ];

    // ========================================================
    // DATA ANALYST
    // ========================================================

      case "Data Analyst":
        return [
          {
            "question":
            "Which tool is commonly used for spreadsheet-based data analysis?",
            "options": [
              "Excel",
              "Photoshop",
              "PowerPoint",
              "Notepad"
            ],
            "answer": "Excel",
            "skill": "Excel"
          },
          {
            "question":
            "Which SQL command retrieves data from a table?",
            "options": [
              "SELECT",
              "DELETE",
              "DROP",
              "INSERT"
            ],
            "answer": "SELECT",
            "skill": "SQL"
          },
          {
            "question":
            "Which Python library is widely used for data manipulation?",
            "options": [
              "Pandas",
              "Turtle",
              "Pygame",
              "Tkinter"
            ],
            "answer": "Pandas",
            "skill": "Python"
          },
          {
            "question":
            "What does mean represent in statistics?",
            "options": [
              "Average",
              "Maximum",
              "Minimum",
              "Range"
            ],
            "answer": "Average",
            "skill": "Statistics"
          },
          {
            "question":
            "Which chart is suitable for showing trends over time?",
            "options": [
              "Line Chart",
              "Pie Chart",
              "Bar Chart",
              "Histogram"
            ],
            "answer": "Line Chart",
            "skill": "Data Visualization"
          },
          {
            "question": "What is data cleaning?",
            "options": [
              "Removing errors and inconsistencies",
              "Deleting all data",
              "Creating passwords",
              "Designing websites"
            ],
            "answer": "Removing errors and inconsistencies",
            "skill": "Data Cleaning"
          },
          {
            "question":
            "Which tool is widely used for business intelligence?",
            "options": [
              "Power BI",
              "Git",
              "Android Studio",
              "Photoshop"
            ],
            "answer": "Power BI",
            "skill": "Power BI"
          },
          {
            "question":
            "What is a primary key in a database?",
            "options": [
              "A unique identifier for a record",
              "A duplicate value",
              "A chart",
              "A formula"
            ],
            "answer": "A unique identifier for a record",
            "skill": "Database"
          },
          {
            "question":
            "Which statistical measure shows the middle value of ordered data?",
            "options": [
              "Mean",
              "Median",
              "Mode",
              "Variance"
            ],
            "answer": "Median",
            "skill": "Statistics"
          },
          {
            "question": "What is data visualization?",
            "options": [
              "Representing data graphically",
              "Deleting data",
              "Encrypting files",
              "Writing code"
            ],
            "answer": "Representing data graphically",
            "skill": "Data Visualization"
          },
        ];

    // ========================================================
    // AI ENGINEER
    // ========================================================

      case "AI Engineer":
        return [
          {
            "question": "What does AI stand for?",
            "options": [
              "Artificial Intelligence",
              "Automated Internet",
              "Advanced Information",
              "Applied Interface"
            ],
            "answer": "Artificial Intelligence",
            "skill": "AI Fundamentals"
          },
          {
            "question":
            "Which programming language is widely used in AI?",
            "options": [
              "Python",
              "HTML",
              "CSS",
              "XML"
            ],
            "answer": "Python",
            "skill": "Python"
          },
          {
            "question": "What is machine learning?",
            "options": [
              "Learning patterns from data",
              "Designing websites",
              "Creating databases",
              "Editing videos"
            ],
            "answer": "Learning patterns from data",
            "skill": "Machine Learning"
          },
          {
            "question":
            "Which library is commonly used for machine learning in Python?",
            "options": [
              "Scikit-learn",
              "Tkinter",
              "Pygame",
              "BeautifulSoup"
            ],
            "answer": "Scikit-learn",
            "skill": "Machine Learning"
          },
          {
            "question": "What is supervised learning?",
            "options": [
              "Learning from labelled data",
              "Learning without data",
              "Learning from websites",
              "Learning from hardware"
            ],
            "answer": "Learning from labelled data",
            "skill": "Machine Learning"
          },
          {
            "question":
            "Which algorithm is commonly used for classification?",
            "options": [
              "Decision Tree",
              "Bubble Sort",
              "Binary Search",
              "Merge Sort"
            ],
            "answer": "Decision Tree",
            "skill": "Algorithms"
          },
          {
            "question":
            "A neural network is inspired by which biological system?",
            "options": [
              "Human brain",
              "Human heart",
              "Human bones",
              "Human muscles"
            ],
            "answer": "Human brain",
            "skill": "Deep Learning"
          },
          {
            "question": "What is training data?",
            "options": [
              "Data used to train a model",
              "Deleted data",
              "Password data",
              "Website source code"
            ],
            "answer": "Data used to train a model",
            "skill": "Data"
          },
          {
            "question":
            "Which technique can help reduce overfitting?",
            "options": [
              "Regularization",
              "Deleting the model",
              "Increasing errors",
              "Removing all data"
            ],
            "answer": "Regularization",
            "skill": "Model Optimization"
          },
          {
            "question":
            "What is the purpose of an AI model?",
            "options": [
              "Make predictions or decisions from data",
              "Only store files",
              "Create presentations",
              "Format documents"
            ],
            "answer":
            "Make predictions or decisions from data",
            "skill": "AI Fundamentals"
          },
        ];

    // ========================================================
    // WEB DEVELOPER
    // ========================================================

      case "Web Developer":
        return [
          {
            "question": "What does HTML stand for?",
            "options": [
              "HyperText Markup Language",
              "HighText Machine Language",
              "Hyper Tool Multi Language",
              "Home Tool Markup Language"
            ],
            "answer": "HyperText Markup Language",
            "skill": "HTML"
          },
          {
            "question":
            "Which language is used to style web pages?",
            "options": [
              "CSS",
              "SQL",
              "Python",
              "Java"
            ],
            "answer": "CSS",
            "skill": "CSS"
          },
          {
            "question":
            "Which language is mainly used to add interactivity to web pages?",
            "options": [
              "JavaScript",
              "HTML",
              "SQL",
              "XML"
            ],
            "answer": "JavaScript",
            "skill": "JavaScript"
          },
          {
            "question":
            "Which HTML tag creates a hyperlink?",
            "options": [
              "<a>",
              "<p>",
              "<h1>",
              "<img>"
            ],
            "answer": "<a>",
            "skill": "HTML"
          },
          {
            "question":
            "Which CSS property changes text color?",
            "options": [
              "color",
              "font-size",
              "background",
              "margin"
            ],
            "answer": "color",
            "skill": "CSS"
          },
          {
            "question": "What does DOM stand for?",
            "options": [
              "Document Object Model",
              "Data Object Method",
              "Digital Object Management",
              "Document Oriented Model"
            ],
            "answer": "Document Object Model",
            "skill": "JavaScript"
          },
          {
            "question":
            "Which HTTP method is commonly used to retrieve data?",
            "options": [
              "GET",
              "POST",
              "DELETE",
              "PATCH"
            ],
            "answer": "GET",
            "skill": "Web Technology"
          },
          {
            "question":
            "What is responsive web design?",
            "options": [
              "Design that adapts to different screen sizes",
              "Design only for computers",
              "Design without CSS",
              "Design without HTML"
            ],
            "answer":
            "Design that adapts to different screen sizes",
            "skill": "Responsive Design"
          },
          {
            "question":
            "Which tag is used to display an image in HTML?",
            "options": [
              "<img>",
              "<image>",
              "<picturefile>",
              "<src>"
            ],
            "answer": "<img>",
            "skill": "HTML"
          },
          {
            "question":
            "Which technology is commonly used for backend JavaScript development?",
            "options": [
              "Node.js",
              "HTML",
              "CSS",
              "Photoshop"
            ],
            "answer": "Node.js",
            "skill": "Backend"
          },
        ];

    // ========================================================
    // CYBER SECURITY ANALYST
    // ========================================================

      case "Cyber Security Analyst":
        return [
          {
            "question":
            "What is the main goal of cyber security?",
            "options": [
              "Protect systems and data",
              "Create websites",
              "Design graphics",
              "Increase screen brightness"
            ],
            "answer": "Protect systems and data",
            "skill": "Security Fundamentals"
          },
          {
            "question": "What does VPN stand for?",
            "options": [
              "Virtual Private Network",
              "Verified Public Network",
              "Virtual Protected Node",
              "Visual Private Network"
            ],
            "answer": "Virtual Private Network",
            "skill": "Networking"
          },
          {
            "question":
            "Which protocol is commonly used for secure web communication?",
            "options": [
              "HTTPS",
              "HTTP",
              "FTP",
              "SMTP"
            ],
            "answer": "HTTPS",
            "skill": "Network Security"
          },
          {
            "question": "What is phishing?",
            "options": [
              "A social engineering attack",
              "A programming language",
              "A database",
              "A backup method"
            ],
            "answer": "A social engineering attack",
            "skill": "Social Engineering"
          },
          {
            "question": "What is malware?",
            "options": [
              "Malicious software",
              "Database software",
              "Design software",
              "Operating system"
            ],
            "answer": "Malicious software",
            "skill": "Malware"
          },
          {
            "question": "Which is the strongest password?",
            "options": [
              "123456",
              "password",
              "Xy7@Kp9#Lm2",
              "abcdef"
            ],
            "answer": "Xy7@Kp9#Lm2",
            "skill": "Security Practices"
          },
          {
            "question": "What does a firewall do?",
            "options": [
              "Monitors and controls network traffic",
              "Creates websites",
              "Stores photos",
              "Runs spreadsheets"
            ],
            "answer":
            "Monitors and controls network traffic",
            "skill": "Network Security"
          },
          {
            "question": "What is encryption?",
            "options": [
              "Converting data into a protected form",
              "Deleting data",
              "Copying data",
              "Formatting a computer"
            ],
            "answer":
            "Converting data into a protected form",
            "skill": "Cryptography"
          },
          {
            "question":
            "Which operating system is commonly used for security testing?",
            "options": [
              "Kali Linux",
              "Windows Paint",
              "PowerPoint",
              "Excel"
            ],
            "answer": "Kali Linux",
            "skill": "Linux"
          },
          {
            "question":
            "What is two-factor authentication?",
            "options": [
              "Using two methods to verify identity",
              "Using two computers",
              "Using two browsers",
              "Using two passwords only"
            ],
            "answer":
            "Using two methods to verify identity",
            "skill": "Authentication"
          },
        ];

      default:
        return [];
    }
  }

  // ============================================================
  // CHECK ANSWER
  // ============================================================

  void checkAnswer(String selectedAnswer) {
    final current = questions[currentQuestion];

    if (selectedAnswer == current["answer"]) {
      score++;
    } else {
      wrongSkills.add(current["skill"]);
    }

    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      showResult();
    }
  }

  // ============================================================
  // READINESS LEVEL
  // ============================================================

  String getReadinessLevel(double percentage) {
    if (percentage >= 80) {
      return "Placement Ready";
    } else if (percentage >= 50) {
      return "Almost Ready";
    } else {
      return "Needs Improvement";
    }
  }

  // ============================================================
  // STRENGTHS
  // ============================================================

  String getStrengths() {
    final allSkills = questions
        .map((question) => question["skill"].toString())
        .toSet();

    final weakSkills = wrongSkills.toSet();

    final strongSkills = allSkills
        .where((skill) => !weakSkills.contains(skill))
        .toList();

    if (strongSkills.isEmpty) {
      return "You need to strengthen the fundamental skills of this career field.";
    }

    if (score >= 8) {
      return "Strong areas: ${strongSkills.join(", ")}. You have a strong understanding of the core concepts in this career field.";
    }

    if (score >= 5) {
      return "Your stronger areas include: ${strongSkills.join(", ")}. You have a basic understanding of the important concepts.";
    }

    return "You have some understanding of: ${strongSkills.join(", ")}. Continue practicing these areas while strengthening your fundamentals.";
  }

  // ============================================================
  // IMPROVEMENT
  // ============================================================

  String getImprovement() {
    final uniqueWrongSkills = wrongSkills.toSet().toList();

    if (uniqueWrongSkills.isEmpty) {
      return "Excellent! You answered all questions correctly. Continue practicing advanced concepts and real-world projects.";
    }

    return "Focus on: ${uniqueWrongSkills.join(", ")}. Practice these topics with hands-on exercises and real-world projects.";
  }

  // ============================================================
  // RECOMMENDED LEARNING
  // ============================================================

  String getLearningRecommendation() {
    switch (widget.career) {
      case "Software Developer":
        return "Programming → Data Structures → OOP → SQL → Algorithms → Git → Debugging → Real-world projects.";

      case "Data Analyst":
        return "Excel → SQL → Statistics → Data Cleaning → Python/Pandas → Data Visualization → Power BI → Real datasets.";

      case "AI Engineer":
        return "Python → AI Fundamentals → Statistics → Machine Learning → Scikit-learn → Deep Learning → Model Optimization → ML projects.";

      case "Web Developer":
        return "HTML → CSS → JavaScript → DOM → Responsive Design → HTTP → APIs → Node.js → Full-stack projects.";

      case "Cyber Security Analyst":
        return "Networking → Linux → Security Fundamentals → Phishing Awareness → Malware → Authentication → Cryptography → Security Labs.";

      default:
        return "Continue learning and practicing your technical skills.";
    }
  }

  // ============================================================
  // PLACEMENT ADVICE
  // ============================================================

  String getPlacementAdvice() {
    if (score >= 8) {
      return "Start preparing for technical interviews, aptitude tests and placement interviews. Add strong career-related projects to your resume.";
    } else if (score >= 5) {
      return "Continue improving your technical fundamentals and build practical projects before attending technical interviews.";
    } else {
      return "Strengthen your fundamentals first. Practice regularly and complete beginner-level projects before starting serious placement preparation.";
    }
  }

  // ============================================================
  // SHOW RESULT
  // ============================================================

  void showResult() {
    // Save the assessment score for the Progress Screen
    ProgressData.saveAssessmentResult(score);

    final double percentage =
        (score / questions.length) * 100;

    final String level =
    getReadinessLevel(percentage);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text(
            "Assessment Result",
            textAlign: TextAlign.center,
          ),

          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                // Trophy
                Center(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.emoji_events,
                        size: 60,
                        color: Colors.orange,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        widget.career,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text(
                        "$score / ${questions.length}",
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),

                      Text(
                        "${percentage.toInt()}%",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      // Readiness
                      Container(
                        width: double.infinity,
                        padding:
                        const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange
                              .withOpacity(0.12),
                          borderRadius:
                          BorderRadius.circular(12),
                        ),
                        child: Text(
                          level,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Strengths
                const Text(
                  "💪 Strengths",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  getStrengths(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 18),

                // Improvement
                const Text(
                  "⚠️ Areas to Improve",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  getImprovement(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 18),

                // Learning
                const Text(
                  "📚 Recommended Learning",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  getLearningRecommendation(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 18),

                // Placement
                const Text(
                  "💼 Placement Preparation",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  getPlacementAdvice(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          actions: [

            // Retake
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);

                setState(() {
                  currentQuestion = 0;
                  score = 0;
                  wrongSkills.clear();
                });
              },
              child: const Text("Retake"),
            ),

            // Finish
            ElevatedButton(
              onPressed: () {
                Navigator.pop(dialogContext);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              child: const Text("Finish"),
            ),
          ],
        );
      },
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Skill Assessment"),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Text(
            "No questions available for this career.",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    final question = questions[currentQuestion];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: Text(
          widget.career,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Text(
              "${widget.career} Assessment",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value:
              (currentQuestion + 1) /
                  questions.length,
              minHeight: 8,
            ),

            const SizedBox(height: 10),

            Text(
              "Question ${currentQuestion + 1} of ${questions.length}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Text(
              question["question"],
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ...(question["options"] as List<String>)
                .map(
                  (option) {
                return Padding(
                  padding:
                  const EdgeInsets.only(
                    bottom: 15,
                  ),

                  child: SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      onPressed: () {
                        checkAnswer(option);
                      },

                      style:
                      ElevatedButton.styleFrom(
                        padding:
                        const EdgeInsets.symmetric(
                          vertical: 16,
                        ),

                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(10),
                        ),
                      ),

                      child: Text(
                        option,
                        textAlign:
                        TextAlign.center,
                        style:
                        const TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),

            const Spacer(),

            Center(
              child: Text(
                "Current Score: $score",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}