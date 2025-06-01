import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../helper/color.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<MyCarouselSlider> {
  late Size mqData = MediaQuery.of(context).size;
  List<Widget> mySliderItem = [
    /// List 1
    SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.lightBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "What is my ex thinking about me ? ",
                style: myTextStyle15(fontWeight: FontWeight.bold),
              ),
              Image.asset("lib/assets/icons/thinking.png"),
            ],
          ),
        ),
      ),
    ),

    /// list 2
    SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.lightBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Will i got a govt jab?",
                style: myTextStyle15(fontWeight: FontWeight.bold),
              ),
              Image.asset("lib/assets/icons/thinking.png"),
            ],
          ),
        ),
      ),
    ),

    /// list 3
    SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.lightBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "When will i get married?",
                style: myTextStyle15(fontWeight: FontWeight.bold),
              ),
              Image.asset("lib/assets/icons/thinking.png"),
            ],
          ),
        ),
      ),
    ),

    /// list 4
    SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.lightBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "When will i find my true love?",
                style: myTextStyle15(fontWeight: FontWeight.bold),
              ),
              Image.asset("lib/assets/icons/thinking.png"),
            ],
          ),
        ),
      ),
    ),

    /// list 5
    SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.lightBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "When Will i get an increment?",
                style: myTextStyle15(fontWeight: FontWeight.bold),
              ),
              Image.asset("lib/assets/icons/thinking.png"),
            ],
          ),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: mySliderItem,
      options: CarouselOptions(
        height: mqData.height * 0.08,
        viewportFraction: 0.98,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
