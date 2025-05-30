import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/screen/starting/enter_details_screen.dart';
import 'package:flutter/material.dart';

import '../../helper/color.dart';
import '../../widgets/my_text_button.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    final mqData = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text(
              "Explore",
              style: myTextStyle18(textColor: Colors.black38),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("lib/assets/images/group.jpg"),

            SizedBox(height: mqData.height * 0.1),
            Text(
              "Congratulations you got a ",
              style: myTextStyle24(
                fontWeight: FontWeight.w900,
                fontFamily: "secondary",
              ),
            ),
            Text(
              "Free chat!",
              style: myTextStyle24(
                fontWeight: FontWeight.w900,
                fontFamily: "secondary",
                textColor: Colors.red,
              ),
            ),
            Spacer(),

            /// stayr button
            SizedBox(
              width: mqData.width * 0.9,
              child: MyTextButton(
                btnText: 'Start Free Chat',
                onPress: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => EnterDetailsScreen()),
                  );
                },
              ),
            ),

            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
