import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper/color.dart';
import '../helper/custom_text_style.dart';

class MyTextButton extends StatelessWidget {
  Color btnBackgroundColor;
  String btnText;
  VoidCallback onPress;
  double borderRadius;
  Color btnTextColor ;
  MyTextButton({
    super.key,
    this.btnBackgroundColor = AppColors.primary,
    required this.btnText,
    required this.onPress,
    this.borderRadius = 27,
    this.btnTextColor = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: btnBackgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(btnText, style: myTextStyle21(fontWeight: FontWeight.bold , textColor: btnTextColor)),
      ),
    );
  }
}
