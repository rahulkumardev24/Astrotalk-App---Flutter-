import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper/color.dart';

class TabCard extends StatelessWidget {
  String title;
  IconData icon;
  Color iconColor;
  TabCard({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(21),
          border: Border.all(width: 1, color: AppColors.primary),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              SizedBox(width: 6),
              Text(title, style: myTextStyle18()),
            ],
          ),
        ),
      ),
    );
  }
}
