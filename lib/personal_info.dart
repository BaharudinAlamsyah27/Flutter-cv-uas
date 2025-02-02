import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // For opening social media links in the browser

/*class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Text("Hi! I'm currently studying Bachelors in CSE at IIUC. I'm at my last year (outgoing), and this is my first flutter project!"),
      ),
    );
  }
*/
class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informasi Personal",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Name and description
            const Text("Baharudin Alamsyah",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const Text("Pelaut Kode",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.1, // 20% of screen width
                  child: const Divider(
                    color: Color.fromRGBO(225, 190, 231, 1), // Line color
                    thickness: 1.5, // Line thickness
                  ),
                ),
                // Flower Icon
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    FontAwesomeIcons.seedling, // Flower-like icon
                    color: Color.fromRGBO(225, 190, 231, 1), // Icon color
                    size: 24, // Icon size
                  ),
                ),
                const SizedBox(width: 10), // Space between icon and divider
                // Horizontal Line
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.1, // 20% of screen width
                  child: const Divider(
                    color: Color.fromRGBO(225, 190, 231, 1), // Line color
                    thickness: 1.5, // Line thickness
                  ),
                ),
              ],
            ),
            /*Container(
              width: MediaQuery.of(context).size.width * 0.2, // 60% of screen width
              child: const Divider(
                color: Color.fromRGBO(225, 190, 231, 1), // Line color
                thickness: 1.5,        // Line thickness
              ),
            ),*/
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Hai, saya sedang memenpuh pendidikan di Jurusan Informatika, dan ini adalah proyek UAS saya yang telah saya kerjakan, dengan orientasi tema CV",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            //onst Text("Social Links"),

            // Social Links with Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  iconSize: 30, // Set the icon size
                  onPressed: () {
                    _launchURL("https://github.com/BaharudinAlamsyah27");
                  },
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  iconSize: 30,
                  onPressed: () {
                    _launchURL("linkedin.com/in/baharudin-alamsyah-06b49a253");
                  },
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook),
                  iconSize: 30,
                  onPressed: () {
                    _launchURL("https://facebook.com/");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to open URLs in the browser
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
