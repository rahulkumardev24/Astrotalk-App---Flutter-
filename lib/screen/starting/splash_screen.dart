import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/screen/starting/enter_details_screen.dart';
import 'package:astrotalk_app/screen/starting/start_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => StartScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    /// medial query
    final mqData = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.asset(
                "lib/assets/icons/app_logo.png",
                height: mqData.height * 0.2,
                width: mqData.height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12),

            Text(
              "Astrotalk",
              style: myTextStyle36(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
