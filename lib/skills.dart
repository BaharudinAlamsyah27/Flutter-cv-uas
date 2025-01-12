import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center align children
            children: [
              const Text(
                "My Skill Set",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20), // Space between title and icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.1, // 10% of screen width
                    child: const Divider(
                      color: Color.fromRGBO(225, 190, 231, 1), // Line color
                      thickness: 1.5, // Line thickness
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      FontAwesomeIcons.seedling, // Flower-like icon
                      color: Color.fromRGBO(225, 190, 231, 1), // Icon color
                      size: 24, // Icon size
                    ),
                  ),
                  const SizedBox(width: 10), // Space between icon and divider
                  SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.1, // 10% of screen width
                    child: const Divider(
                      color: Color.fromRGBO(225, 190, 231, 1), // Line color
                      thickness: 1.5, // Line thickness
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space after horizontal line

              // Backend Skills Section
              const Text(
                "Backend Skills",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildSkillRow("C++", 0.5), // 80% proficiency
              _buildSkillRow("Python", 0.6), // 85% proficiency

              const SizedBox(height: 20), // Space between sections

              // Frontend Skills Section
              const Text(
                "Frontend Skills",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildSkillRow("HTML", 0.85), // 90% proficiency
              _buildSkillRow("CSS", 0.85), // 85% proficiency
              _buildSkillRow("JavaScript", 0.65), // 75% proficiency
              _buildSkillRow("Flutter", 0.5), // 70% proficiency

              const SizedBox(height: 20),

              // Database Skills Section
              const Text(
                "Database Skills",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildSkillRow("MySQL", 0.5), // 80% proficiency
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create skill bars with max width
  Widget _buildSkillRow(String skill, double proficiency) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 5),
        Container(
          constraints:
              const BoxConstraints(maxWidth: 400), // Set your max width here
          child: LinearProgressIndicator(
            value: proficiency, // Skill level
            backgroundColor: Colors.grey[300],
            color: Colors.purple, // Customize the bar color
            minHeight: 8, // Thickness of the bar
          ),
        ),
        const SizedBox(height: 10), // Space after each bar
      ],
    );
  }
}
