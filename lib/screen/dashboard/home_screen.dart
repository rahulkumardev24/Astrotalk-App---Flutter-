import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/widgets/my_text_button.dart';
import 'package:flutter/material.dart';

import '../../helper/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Size mqData = MediaQuery.of(context).size;

  /// yello card data
  List<Map<String, dynamic>> yelloBoxCard = [
    {
      "image": "lib/assets/images/sun (1).png",
      "title": "Daily",
      "subTitle": "Horoscope",
    },
    {
      "image": "lib/assets/images/esoteric.png",
      "title": "Free",
      "subTitle": "Kundli",
    },
    {
      "image": "lib/assets/images/heart matching.png",
      "title": "Kundli",
      "subTitle": "Matching",
    },

    {
      "image": "lib/assets/images/study.png",
      "title": "Astrology",
      "subTitle": "Blog",
    },
  ];

  /// astrologers card data
  List<Map<String, dynamic>> astroData = [
    {"image": "lib/assets/images/ast1.jpg", "name": "Ananya"},
    {"image": "lib/assets/images/ast2.jpg", "name": "Priya"},
    {"image": "lib/assets/images/ast3.jpg", "name": "Kavita"},
    {"image": "lib/assets/images/ast4.jpg", "name": "Meera"},
    {"image": "lib/assets/images/ast5.jpg", "name": "Ritika"},
    {"image": "lib/assets/images/ast6.jpg", "name": "Rohit"},
    {"image": "lib/assets/images/ast7.jpg", "name": "Aman"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        /// app bar
        appBar: AppBar(
          flexibleSpace: _buildAppBar(),
          backgroundColor: Colors.white,
        ),

        /// --- body ---- ////
        body: SafeArea(
          child: Stack(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// search box
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1, color: Colors.black26),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Search",
                                  style: myTextStyle12(
                                    textColor: Colors.black38,
                                  ),
                                ),
                                Icon(Icons.search, color: Colors.black38),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: mqData.height * 0.02),

                      /// yellow box call here
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                          height: mqData.height * 0.15,
                          child: ListView.builder(
                            itemCount: yelloBoxCard.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return _yellowBox(
                                imagePath: yelloBoxCard[index]["image"],
                                title: yelloBoxCard[index]["title"],
                                subtitle: yelloBoxCard[index]["subTitle"],
                              );
                            },
                          ),
                        ),
                      ),

                      Divider(
                        thickness: 8,
                        color: Colors.black12.withAlpha(10),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 6,
                        ),
                        child: SizedBox(
                          height: mqData.height * 0.13,
                          width: mqData.width,
                          child: Card(color: Colors.white),
                        ),
                      ),

                      Divider(
                        thickness: 8,
                        color: Colors.black12.withAlpha(10),
                      ),

                      /// live Astrologers
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Live Astrologers",
                              style: myTextStyle18(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "View All",
                              style: myTextStyle18(textColor: Colors.black45),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 12),

                      /// Live Astrologers box call here
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                          height: mqData.height * 0.18,
                          child: ListView.builder(
                            itemCount: astroData.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return liveAstrologerCard(
                                image: astroData[index]["image"],
                                name: astroData[index]["name"],
                              );
                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 8),
                      Divider(
                        thickness: 8,
                        color: Colors.black12.withAlpha(10),
                      ),

                      /// black card
                      questionBox(),
                      Divider(
                        thickness: 8,
                        color: Colors.black12.withAlpha(10),
                      ),

                      /// live Astrologers
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Astrologers",
                              style: myTextStyle18(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "View All",
                              style: myTextStyle18(textColor: Colors.black45),
                            ),
                          ],
                        ),
                      ),

                      /// Astrologers
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                          height: mqData.height * 0.2,
                          child: ListView.builder(
                            itemCount: yelloBoxCard.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return _astrologersCard(
                                imagePath: yelloBoxCard[index]["image"],
                                title: yelloBoxCard[index]["title"],
                                subtitle: yelloBoxCard[index]["subTitle"],
                              );
                            },
                          ),
                        ),
                      ),


                      /// bottom space
                      SizedBox(height: mqData.height * 0.1,)
                    ],
                  ),
                ),
              ),

              /// bottom button
              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Chart with Astrologer
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          elevation: 5,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.chat, color: Colors.black),
                            SizedBox(width: 2),
                            Text(
                              "Chart with Astrologer",
                              style: myTextStyle12(),
                            ),
                          ],
                        ),
                      ),

                      /// Call with Astrologer
                      ElevatedButton(
                        onPressed: () {},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          elevation: 5,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.call, color: Colors.black),
                            SizedBox(width: 2),
                            Text(
                              "Call with Astrologer",
                              style: myTextStyle12(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// app bar build
  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          /// profile image
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "lib/assets/images/profile.png",
                  fit: BoxFit.cover,
                  height: mqData.height * 0.05,
                  width: mqData.height * 0.05,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.menu_rounded, size: 16),
                ),
              ),
            ],
          ),
          SizedBox(width: 12),
          Text("Hi Rahul", style: myTextStyle21()),

          Expanded(child: SizedBox(width: mqData.width)),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              border: Border.all(width: 1, color: Colors.black38),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet_outlined),
                  Icon(Icons.currency_rupee_rounded),
                  Text("0", style: myTextStyle21()),
                  Icon(Icons.add_circle_rounded),
                ],
              ),
            ),
          ),

          SizedBox(width: 12),

          /// language
          Icon(Icons.g_translate_rounded),

          SizedBox(width: 12),

          Container(
            decoration: BoxDecoration(
              color: AppColors.lightBackground,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "lib/assets/images/customer-service-agent.png",
              fit: BoxFit.cover,
              height: mqData.height * 0.05,
              width: mqData.height * 0.05,
            ),
          ),
        ],
      ),
    );
  }

  /// yello box
  Widget _yellowBox({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: mqData.width * 0.03),
          height: mqData.height * 0.08,
          width: mqData.height * 0.08,
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePath),
          ),
        ),
        Text(title, style: myTextStyle18(textColor: Colors.black45)),
        Text(subtitle, style: myTextStyle18(textColor: Colors.black45)),
      ],
    );
  }

  Widget liveAstrologerCard({required String image, required String name}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: mqData.width * 0.27,
              height: mqData.height * 0.6,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 10,
            left: mqData.width * 0.05,
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: "primary",
                color: Colors.white,
                shadows: [BoxShadow(blurRadius: 5, spreadRadius: 4)],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget questionBox() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Container(
            height: mqData.height * 0.13,
            width: mqData.width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: mqData.width * 0.06),
                  Image.asset("lib/assets/images/question_image.png"),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Got any questions?",
                          style: myTextStyle24(
                            textColor: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "chat with Astrologer",
                          style: myTextStyle18(textColor: Colors.white),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "@INR 5/min",
                              style: myTextStyle21(
                                textColor: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 2,
                                  ),
                                  child: Text(
                                    "Chat Now",
                                    style: myTextStyle18(
                                      fontWeight: FontWeight.bold,
                                      textColor: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "NEW",
                  style: myTextStyle15(textColor: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  /// Astrologer card
  Widget _astrologersCard({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: mqData.width * 0.3,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12) ,
        border: Border.all(width: 2 , color: Colors.black38) ,

      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: mqData.width * 0.03),
            height: mqData.height * 0.08,
            width: mqData.height * 0.08,
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
              border: Border.all(width: 2 , color: AppColors.primary)
              
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath),
            ),
          ),
          Text(title, style: myTextStyle18(textColor: Colors.black45)),
          Text(subtitle, style: myTextStyle18(textColor: Colors.black45)),
          
         Container(
             decoration: BoxDecoration(
               color: Colors.white ,
               borderRadius: BorderRadius.circular(21) ,
               border: Border.all(width: 2 , color: Colors.green)
             ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 4),
               child: Text("Chat" , style: myTextStyle18(textColor: Colors.green),),
             ))
        ],
      ),
    );
  }


}
