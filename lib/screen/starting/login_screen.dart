import 'package:astrotalk_app/helper/color.dart';
import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/screen/starting/otp_screen.dart';
import 'package:astrotalk_app/widgets/my_text_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Size mqData = MediaQuery.of(context).size;
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text("Skip", style: myTextStyle21()),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/images/group.jpg",
                height: mqData.height * 0.2,
              ),
              SizedBox(height: 12),
              Text(
                "Astrotalk",
                style: myTextStyle24(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: mqData.height * 0.013),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(color: AppColors.primary),
                    ),
                    Positioned(
                      left: mqData.width * 0.1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21),
                          border: Border.all(width: 1, color: Colors.black38),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21.0,
                            vertical: 4,
                          ),
                          child: Text(
                            "First Chat with Astrologer if FREE!",
                            style: myTextStyle18(),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: mqData.height * 0.1,
                      left: 20,
                      right: 20,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Image.asset(
                                  "lib/assets/images/flag.png",
                                  height: mqData.height * 0.04,
                                ),
                                SizedBox(width: 12),
                                Text(
                                  "IN +91  ",
                                  style: myTextStyle24(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Expanded(
                                  child: TextField(
                                    controller: phoneNumberController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'phone number',
                                      hintStyle: myTextStyle24(
                                        fontWeight: FontWeight.bold,
                                        textColor: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 21),

                          /// get otp button
                          SizedBox(
                            width: mqData.width,
                            child: MyTextButton(
                              btnText: "GET OTP",
                              borderRadius: 16,
                              onPress: () {
                                if (phoneNumberController.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "please enter your phone number",
                                        style: myTextStyle18(
                                          textColor: Colors.white,
                                        ),
                                      ),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (_) => OtpScreen(
                                            phoneNumber:
                                                phoneNumberController.text,
                                          ),
                                    ),
                                  );
                                }
                              },
                              btnTextColor: Colors.white,
                              btnBackgroundColor: Colors.black,
                            ),
                          ),

                          SizedBox(height: mqData.height * 0.01),

                          Text(
                            "By signing up , you agree to our Terms of Use and ",
                            style: myTextStyle15(textColor: Colors.black54),
                          ),
                          Text(
                            "Privacy Policy",

                            style: TextStyle(
                              fontFamily: "primary",
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),

                          SizedBox(height: 12),

                          /// divider
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 1.5,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 21.0,
                                ),
                                child: Text("Or", style: myTextStyle24()),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1.5,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 12),

                          /// Login with true caller
                          ElevatedButton(
                            onPressed: () {},

                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                                side: BorderSide(width: 1, color: Colors.blue),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wifi_calling_3,
                                    size: 31,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    "Login with Truecaller",
                                    style: myTextStyle21(
                                      fontWeight: FontWeight.bold,
                                      textColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // First column
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "100%",
                                  style: myTextStyle24(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("privacy", style: myTextStyle12()),
                              ],
                            ),

                            // First vertical divider
                            VerticalDivider(
                              width: 32,
                              thickness: 2,
                              color: Colors.black38,
                            ),

                            // Second column
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "10000+",
                                  style: myTextStyle24(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Top astrologers of India",
                                  style: myTextStyle12(),
                                ),
                              ],
                            ),

                            // Second vertical divider
                            VerticalDivider(
                              width: 32,
                              thickness: 2,
                              color: Colors.black38,
                            ),

                            // Third column
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "3Cr+",
                                  style: myTextStyle24(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Happy customers", style: myTextStyle12()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
