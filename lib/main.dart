import 'package:astrotalk_app/screen/dashboard/chat_screen.dart';
import 'package:astrotalk_app/screen/dashboard/dashboard_screen.dart';
import 'package:astrotalk_app/screen/dashboard/remedies_screen.dart';
import 'package:astrotalk_app/screen/starting/enter_details_screen.dart';
import 'package:astrotalk_app/screen/starting/login_screen.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: RemediesScreen(),
    );
  }
}
