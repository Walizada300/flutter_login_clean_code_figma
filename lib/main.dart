import 'package:flutter/material.dart';
import 'package:sign_in/screens/welcome_screen.dart';

// Author:
// Abdul Baes Walizadah

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff01C8CC)),
      ),
      home: WelcomeScreen(),
    );
  }
}
