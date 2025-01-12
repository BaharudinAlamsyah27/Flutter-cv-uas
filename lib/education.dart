/*class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Education",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Text("Details about Ed info here"),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Education",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center align children
            children: [
              const SizedBox(height: 20), // Space between title and icon
              const Text(
                "My Education",
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
              const SizedBox(height: 20), // Space between title and icon
              // University Section
              _buildEducationItem(
                "assets/images/Universitas Pgri Semarang.jpg", // Update with your university logo path
                "Universitas PGRI Semarang",
                "September 2022 - Sekarang",
              ),
              const SizedBox(height: 20), // Space between education items
              // High School Section
              _buildEducationItem(
                "assets/images/SMAN 2 Brebes.jpg", // Update with your high school logo path
                "SMAN 2 Brebes",
                "2019 - 2022",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationItem(String logoPath, String schoolName, String dates) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo on the left
        Image.asset(
          logoPath,
          width: 60, // Set the desired logo size
          height: 60,
        ),
        const SizedBox(width: 10), // Space between logo and text
        // Text details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                schoolName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(dates,
                  style: const TextStyle(fontSize: 16, color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}
