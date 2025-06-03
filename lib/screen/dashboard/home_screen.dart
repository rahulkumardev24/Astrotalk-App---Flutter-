import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/screen/common/search_screen.dart';
import 'package:astrotalk_app/widgets/my_text_button.dart';
import 'package:flutter/material.dart';

import '../../helper/color.dart';
import '../../widgets/language_selection_dialog.dart';
import '../../widgets/my_drawer.dart';
import '../common/add_money_screen.dart';
import '../common/help_and_support_screen.dart';

class HomeScreen extends StatefulWidget {
  final Function(int index) onTabChange;
  const HomeScreen({super.key, required this.onTabChange});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Size mqData = MediaQuery.of(context).size;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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

  /// astrologers card data
  List<Map<String, dynamic>> astrologers = [
    {
      "image": "lib/assets/images/men1.png",
      "name": "Rishank",
      "call": "72/min",
    },
    {
      "image": "lib/assets/images/men2.png",
      "name": "Vaidikk",
      "call": "57/min",
    },
    {"image": "lib/assets/images/men3.png", "name": "Rohit", "call": "40/min"},
    {
      "image": "lib/assets/images/men1.png",
      "name": "Himanshu",
      "call": "35/min",
    },
    {
      "image": "lib/assets/images/men2.png",
      "name": "Vaidikk",
      "call": "47/min",
    },
    {"image": "lib/assets/images/men3.png", "name": "Shyam", "call": "25/min"},
    {"image": "lib/assets/images/men1.png", "name": "Vikas", "call": "19/min"},
  ];

  /// AstroRemedy
  List<Map<String, dynamic>> astroRemedy = [
    {
      "image": "lib/assets/images/bracelets.jpeg",
      "title": "Bracelets & Pendants",
    },
    {"image": "lib/assets/images/epooja.jpg", "title": "E-Pooja"},
    {"image": "lib/assets/images/vip-e-pooja.jpg", "title": "VIP E-Pooja"},
    {"image": "lib/assets/images/shanidev.jpg", "title": "Shanivaar special"},
    {"image": "lib/assets/images/spell.jpg", "title": "Spell"},
    {"image": "lib/assets/images/rahu-ketu.jpg", "title": "Rahu-Ketu"},
    {"image": "lib/assets/images/reiki.jpg", "title": "Reiki Healing"},
  ];

  List<Map<String, dynamic>> latestBlog = [
    {
      "blogView": "960",
      "title": "5050 Angel Number",
      "name": "Nabangi",
      "Date": "May 28, 2025",
    },
    {
      "blogView": "980",
      "title": "3030 Angel Number",
      "name": "Karan Mehta",
      "Date": "May 26, 2025",
    },
    {
      "blogView": "1570",
      "title": "4848 Angel Number",
      "name": "Nabangi",
      "Date": "May 25, 2025",
    },
    {
      "blogView": "845",
      "title": "4848 Angel Number",
      "name": "Ravi Tiwari",
      "Date": "May 24, 2025",
    },
    {
      "blogView": "1095",
      "title": "3737 Angel Number",
      "name": "Sanya Gupta",
      "Date": "May 22, 2025",
    },
    {
      "blogView": "1330",
      "title": "3636 Angel Number",
      "name": "Ananya Das",
      "Date": "May 20, 2025",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: MyDrawer(),

        /// app bar
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: _buildAppBar(),
          backgroundColor: Colors.white,
        ),

        /// --- body ---- ////
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    /// search box
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => SearchScreen()),
                          );
                        },
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

                    Divider(thickness: 8, color: Colors.black12.withAlpha(10)),

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

                    Divider(thickness: 8, color: Colors.black12.withAlpha(10)),

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
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: (){
                              widget.onTabChange(2);
                            },
                            child: Text(
                              "View All",
                              style: myTextStyle12(textColor: Colors.black45),
                            ),
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
                    Divider(thickness: 8, color: Colors.black12.withAlpha(10)),

                    /// black card
                    questionBox(),
                    Divider(thickness: 8, color: Colors.black12.withAlpha(10)),

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
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "View All",
                            style: myTextStyle12(textColor: Colors.black45),
                          ),
                        ],
                      ),
                    ),

                    /// Astrologers
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SizedBox(
                        height: mqData.height * 0.27,
                        child: ListView.builder(
                          itemCount: astrologers.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _astrologersCard(
                              imagePath: astrologers[index]["image"],
                              name: astrologers[index]["name"],
                              call: astrologers[index]["call"],
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 12),
                    Divider(thickness: 8, color: Colors.black12.withAlpha(10)),

                    /// AstroRemedy
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "AstroRemedy",
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: (){
                              widget.onTabChange(4);
                            },
                            child: Text(
                              "View All",
                              style: myTextStyle12(textColor: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// astroRemedyCard  here
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SizedBox(
                        height: mqData.height * 0.2,
                        child: ListView.builder(
                          itemCount: astroRemedy.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return astroRemedyCard(
                              image: astroRemedy[index]["image"],
                              name: astroRemedy[index]["title"],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 12),

                    Divider(thickness: 8, color: Colors.black12.withAlpha(10)),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest from blog",
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "View All",
                            style: myTextStyle12(textColor: Colors.black45),
                          ),
                        ],
                      ),
                    ),

                    /// Latest blog
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SizedBox(
                        height: mqData.height * 0.26,
                        child: ListView.builder(
                          itemCount: latestBlog.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return latestBlogCard(
                              title: latestBlog[index]["title"],
                              view: latestBlog[index]["blogView"],
                              date: latestBlog[index]["Date"],
                              name: latestBlog[index]["name"],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 12),

                    Divider(thickness: 8, color: Colors.black12.withAlpha(10)),
                    SizedBox(height: mqData.height * 0.02),

                    /// bottom
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12.withAlpha(30),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.black87,
                                  size: mqData.height * 0.05,
                                ),
                              ),
                            ),

                            SizedBox(height: 21),
                            Text(
                              "Private & ",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Confidential",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12.withAlpha(30),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.verified_user,
                                  color: Colors.black87,
                                  size: mqData.height * 0.05,
                                ),
                              ),
                            ),

                            SizedBox(height: 21),
                            Text(
                              "Verified",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Astrologers",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12.withAlpha(30),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.security_rounded,
                                  color: Colors.black87,
                                  size: mqData.height * 0.05,
                                ),
                              ),
                            ),

                            SizedBox(height: 21),
                            Text(
                              "Secure",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Payments",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),

                    /// bottom space
                    SizedBox(height: mqData.height * 0.1),
                  ],
                ),
              ),

              /// bottom button
              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Chart with Astrologer
                      ElevatedButton(
                        onPressed: () {
                          widget.onTabChange(1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          elevation: 3,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.chat, color: Colors.black, size: 14),
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
                        onPressed: () {
                          widget.onTabChange(3);
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          elevation: 3,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.call, color: Colors.black, size: 14),
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
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// profile image
          GestureDetector(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "lib/assets/images/profile.png",
                    fit: BoxFit.cover,
                    height: mqData.height * 0.04,
                    width: mqData.height * 0.04,
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
          ),
          SizedBox(width: 12),
          Text("Hi Rahul", style: myTextStyle15()),

          Expanded(child: SizedBox(width: mqData.width)),

          GestureDetector(
            onTap: () {
              /// Navigate to add money screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AddMoneyScreen()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                border: Border.all(width: 1, color: Colors.black38),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 2,
                ),
                child: Row(
                  children: [
                    Icon(Icons.account_balance_wallet_outlined, size: 15),
                    Icon(Icons.currency_rupee_rounded, size: 15),
                    Text("0", style: myTextStyle15()),
                    Icon(Icons.add_circle_rounded, size: 15),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(width: 12),

          /// language
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const LanguageSelectionDialog(),
              );
            },

            child: Icon(Icons.g_translate_rounded, size: mqData.height * 0.03),
          ),

          SizedBox(width: 12),

          /// help and support
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HelpAndSupportScreen()),
              );
            },
            child: Container(
              height: mqData.height * 0.04,
              width: mqData.height * 0.04,
              decoration: BoxDecoration(
                color: AppColors.lightBackground,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "lib/assets/images/customer-service-agent.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
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
        Text(title, style: myTextStyle15(textColor: Colors.black45)),
        Text(subtitle, style: myTextStyle15(textColor: Colors.black45)),
      ],
    );
  }

  Widget liveAstrologerCard({required String image, required String name}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
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
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: "primary",
              color: Colors.white,
              shadows: [BoxShadow(blurRadius: 5, spreadRadius: 4)],
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
            height: mqData.height * 0.14,
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
                          style: myTextStyle21(
                            textColor: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "chat with Astrologer",
                          style: myTextStyle15(textColor: Colors.white),
                        ),

                        SizedBox(height: mqData.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "@INR 5/min",
                              style: myTextStyle15(
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
                  topLeft: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "NEW",
                  style: myTextStyle12(textColor: Colors.white),
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
    required String name,
    required String call,
  }) {
    return Stack(
      children: [
        SizedBox(
          width: mqData.width * 0.4,
          child: Card(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 21),

                /// profile
                Container(
                  margin: EdgeInsets.symmetric(horizontal: mqData.width * 0.03),
                  height: mqData.height * 0.12,
                  width: mqData.height * 0.12,
                  decoration: BoxDecoration(
                    color: AppColors.lightBackground,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: AppColors.primary),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 4),

                /// name
                Text(
                  name,
                  style: myTextStyle18(
                    textColor: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.currency_rupee_rounded,
                      size: 16,
                      color: Colors.black38,
                    ),
                    Text(call, style: myTextStyle12(textColor: Colors.black45)),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(width: 1, color: Colors.green),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mqData.height * 0.03,
                      vertical: 4,
                    ),
                    child: Text(
                      "Chat",
                      style: myTextStyle12(textColor: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black87.withAlpha(170),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "*Celebrity*",
                style: myTextStyle12(textColor: Colors.yellow),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget astroRemedyCard({required String image, required String name}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: mqData.width * 0.5,
              height: mqData.height * 0.9,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: "primary",
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.7),
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// latest blog
  Widget latestBlogCard({
    required String title,
    required String view,
    required String date,
    required String name,
  }) {
    return SizedBox(
      width: mqData.width * 0.6,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// image
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: mqData.width,
                  height: mqData.height * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    image: DecorationImage(
                      image: AssetImage("lib/assets/images/queen.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 1,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.visibility, size: 15),
                          Text(
                            view,
                            style: myTextStyle12(textColor: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset(
                            "lib/assets/icons/app_logo.png",
                            height: mqData.height * 0.02,
                            width: mqData.height * 0.02,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Astrotalk",
                          style: myTextStyle12(textColor: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      title,
                      style: myTextStyle15(
                        fontWeight: FontWeight.bold,
                        textColor: Colors.white,
                      ),
                    ),

                    Text(
                      "Angels have a message for you!",
                      style: myTextStyle12(textColor: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: myTextStyle15(fontWeight: FontWeight.bold),
                  ),
                  Text("Meaning:Love,Career&Twin", style: myTextStyle15()),

                  SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nabangi",
                        style: myTextStyle12(textColor: Colors.black38),
                      ),
                      Text(
                        date,
                        style: myTextStyle12(textColor: Colors.black38),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
