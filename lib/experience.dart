import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Experiences",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center align children
            children: [
              const Text(
                "My Experiences",
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

              _buildEducationItem(
                "assets/images/Infest.png", // Update with your university logo path
                "Internet Of Things",
                "Membuat Sensor Suhu, Kelembapan, gas",
                "Februari 2024 - Juni 2024",
              ),
              const SizedBox(height: 20), // Space between education items

              _buildEducationItem(
                "assets/images/Himforma.png", // Update with your high school logo path
                "pelatihan FE BE Pemrograman",
                "Mengikuti Pelatihan yang diselenggarakan oleh Himforma",
                "02-03 November 2024",
              ),
              const SizedBox(height: 20), // Space between title and icon

              _buildEducationItem(
                "assets/images/Workshop.jpg", // Update with your university logo path
                "Pemakalahan Nasional Bidang AI",
                "dalam rangka menyelesaikan perkuliahan Metopen",
                "14 Juni 2024",
              ),
              const SizedBox(height: 20), // Space between education items

              _buildEducationItem(
                "assets/images/Infest.png", // Update with your high school logo path
                "Web Development",
                "Pengembangan Website Peminjaman Lapangan Bola",
                "26 Mei - 28 Juni ",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationItem(
      String logoPath, String designation, String schoolName, String dates) {
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
                designation,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                schoolName,
                style: const TextStyle(fontSize: 18),
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
