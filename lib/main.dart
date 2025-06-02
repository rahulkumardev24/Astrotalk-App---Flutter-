import 'package:astrotalk_app/screen/dashboard/dashboard_screen.dart';
import 'package:astrotalk_app/screen/dashboard/live_screen.dart';
import 'package:astrotalk_app/screen/starting/splash_screen.dart';
import 'package:astrotalk_app/screen/starting/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astrotalk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}
