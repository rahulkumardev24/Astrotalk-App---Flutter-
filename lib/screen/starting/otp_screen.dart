import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/widgets/my_text_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../helper/color.dart';
import '../dashboard/dashboard_screen.dart';

class OtpScreen extends StatefulWidget {
  String phoneNumber;
  OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late Size mqData = MediaQuery.of(context).size;
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,

      /// app bar
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        title: Text("Verify Phone"),
      ),

      /// body
      body: SafeArea(
        child: Column(
          children: [
            Divider(),

            SizedBox(height: mqData.height * 0.05),

            Text(
              "OTP sent to +91-${widget.phoneNumber}",
              style: myTextStyle18(
                textColor: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: mqData.height * 0.05),

            /// here we show pin box
            Pinput(
              length: 4,
              showCursor: true,
              onCompleted: (pin) => otpCode = pin,

              /// number keyboard show
              keyboardType: TextInputType.number,

              /// space between box
              separatorBuilder: (index) => SizedBox(width: mqData.width * 0.05),

              defaultPinTheme: PinTheme(
                height: 50,
                width: 50,
                textStyle: myTextStyle24(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(height: mqData.height * 0.025),

            /// Submit buton
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: mqData.width,
                child: MyTextButton(
                  btnText: "SUBMIT",
                  borderRadius: 12,
                  onPress: () {
                    /// dashboard screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => DashboardScreen()),
                    );
                  },
                ),
              ),
            ),

            /// resSend button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Resend OTP available in 60 s ",
                    style: myTextStyle18(
                      textColor: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            /// divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "or",
                      style: myTextStyle21(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 2, color: Colors.black)),
                ],
              ),
            ),

            SizedBox(height: mqData.height * 0.05),

            /// Login with true caller
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
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
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wifi_calling_3, size: 31, color: Colors.blue),
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
            ),
          ],
        ),
      ),
    );
  }
}
