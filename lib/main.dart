import 'package:cv_mobile_app2/books_view.dart';
import 'package:flutter/material.dart';
import 'package:cv_mobile_app2/home_page.dart';
import 'package:cv_mobile_app2/theme_provider.dart';
import 'package:cv_mobile_app2/login.dart'; // Import login.dart
import 'package:cv_mobile_app2/komentar.dart'; // Import komentar.dart
import 'package:provider/provider.dart';
import 'loading_screen.dart'; // Import loading_screen.dart

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple[100],
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple[500],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple[500],
        ),
      ),
      initialRoute: '/splash', // Rute awal
      routes: <String, WidgetBuilder>{
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginScreen(),
        '/books': (context) => const BooksView(), //
        '/komentar': (context) => const Komentar(), // Tambahkan rute komentar
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login'); // Menuju login
    });
  }

  @override
  Widget build(BuildContext context) {
    return const LoadingScreen(); // Tampilkan layar loading
  }
}
