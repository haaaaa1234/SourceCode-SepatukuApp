import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sepatuku_app/OnBoardingPage.dart';
import 'package:sepatuku_app/SepatukuPage.dart';
// import 'package:sepatuku_app/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SepatuKu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.raleway().fontFamily,
      ),
      home: HomePage(),
      routes: {
        '/listview': (context) => SepatukuPage(title: 'Galeri Sepatu'),
      },
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: '1:191481072680:android:6b32b89f6ee16fe70c791d',
      apiKey: 'AIzaSyCjbO_eaaXzRL52QOlD9MDwFKIRz8RXylQ',
      messagingSenderId: '191481072680',
      projectId: 'sepatukuapp',
    ),
  );

  runApp(const MyApp());
}
