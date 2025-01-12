// File: detail_buku.dart
import 'package:flutter/material.dart';

class DetailBukuScreen extends StatelessWidget {
  final String title;
  final String image;

  const DetailBukuScreen({super.key, required this.title, required this.image});

  String getBookDescription(String title) {
    switch (title) {
      case 'The Power of Habit':
        return 'Buku ini mengungkap cara kebiasaan terbentuk dan bagaimana mengubahnya untuk mencapai kesuksesan pribadi dan profesional.';
      case 'Sebuah Seni untuk Bersikap Bodo Amat':
        return 'Sebuah panduan untuk menemukan kedamaian batin dengan cara mengabaikan hal-hal yang tidak penting dalam hidup.';
      case 'Atomic Habits':
        return 'Fokus pada perubahan kecil yang bisa membawa dampak besar, mengajarkan bagaimana membangun kebiasaan yang efektif.';
      case 'Grit':
        return 'Menguraikan pentingnya ketekunan dan semangat dalam mencapai tujuan jangka panjang, bukti bahwa bakat saja tidak cukup.';
      case 'Berani Tidak Disukai':
        return 'Buku ini membahas bagaimana menerima diri sendiri dan menghargai kedamaian batin, meski ada penolakan dari orang lain.';
      case 'Filosofi Teras':
        return 'Menjelajahi kebijaksanaan hidup dari perspektif budaya Indonesia, memberikan panduan hidup yang sederhana namun mendalam.';
      default:
        return 'Deskripsi untuk buku ini belum tersedia.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              getBookDescription(title),
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
