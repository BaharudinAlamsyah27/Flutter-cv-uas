import 'package:flutter/material.dart';
import 'package:cv_mobile_app2/personal_info.dart';
import 'package:cv_mobile_app2/skills.dart';
import 'package:cv_mobile_app2/education.dart';
import 'package:cv_mobile_app2/experience.dart';
import 'package:provider/provider.dart';
import 'package:cv_mobile_app2/theme_provider.dart';
import 'package:cv_mobile_app2/books_view.dart'; // Import untuk BooksView
import 'package:cv_mobile_app2/komentar.dart'; // Import halaman Komentar

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile Saya",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isDarkMode ? Icons.wb_sunny : Icons.nights_stay,
            ),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Image
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.purple,
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/profil.jpg",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Name, Phone & Email
              const Text(
                "Baharudin Alamsyah",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.purple, size: 16),
                  SizedBox(width: 2),
                  Text("+62-8771504-0567"),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.purple, size: 16),
                  SizedBox(width: 5),
                  Text("alamsyaah123@gmail.com"),
                ],
              ),
              const SizedBox(height: 20),

              // Navigation Buttons
              _buildNavButton(
                  context, "Personal Information", PersonalInfoPage()),
              _buildNavButton(context, "Skills", SkillsPage()),
              _buildNavButton(context, "Education", EducationPage()),
              _buildNavButton(context, "Experience", ExperiencePage()),
              _buildNavButton(context, "Favorite Books", const BooksView()),

              // New Button for Komentar
              _buildNavButton(context, "Komentar",
                  const Komentar()), // Button untuk navigasi ke Komentar
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title, Widget nextPage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Text(title),
      ),
    );
  }
}
