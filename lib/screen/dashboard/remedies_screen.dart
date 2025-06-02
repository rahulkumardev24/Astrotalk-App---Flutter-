import 'package:astrotalk_app/screen/common/cart_screen.dart';
import 'package:astrotalk_app/screen/common/search_screen.dart';
import 'package:astrotalk_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import '../../helper/color.dart';
import '../../helper/custom_text_style.dart';

class RemediesScreen extends StatefulWidget {
  const RemediesScreen({super.key});

  @override
  State<RemediesScreen> createState() => _RemediesScreenState();
}

class _RemediesScreenState extends State<RemediesScreen> {
  late Size mqData = MediaQuery.of(context).size;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  /// AstroRemedy
  List<Map<String, dynamic>> astroRemedy = [
    {
      "image": "lib/assets/images/bracelets.jpeg",
      "title": "Bracelets & Pendants",
      "tag": "STARTS AT 499",
    },
    {
      "image": "lib/assets/images/epooja.jpg",
      "title": "E-Pooja",
      "tag": "STARTS AT 199",
    },
    {
      "image": "lib/assets/images/vip-e-pooja.jpg",
      "title": "VIP E-Pooja",
      "tag": "STARTS AT 499",
    },
    {
      "image": "lib/assets/images/shanidev.jpg",
      "title": "Shanivaar special",
      "tag": "STARTS AT 199",
    },
    {
      "image": "lib/assets/images/spell.jpg",
      "title": "Spell",
      "tag": "STARTS AT 1100",
    },
    {
      "image": "lib/assets/images/rahu-ketu.jpg",
      "title": "Rahu-Ketu",
      "tag": "BLESSINGS FOR YOU",
    },
    {
      "image": "lib/assets/images/reiki.jpg",
      "title": "Reiki Healing",
      "tag": "BLESSINGS FOR YOU",
    },
    {
      "image": "lib/assets/images/bracelets.jpeg",
      "title": "Bracelets & Pendants",
      "tag": "STARTS AT 499",
    },
    {"image": "lib/assets/images/epooja.jpg", "title": "E-Pooja"},
    {
      "image": "lib/assets/images/vip-e-pooja.jpg",
      "title": "VIP E-Pooja",
      "tag": "STARTS AT 499",
    },
    {"image": "lib/assets/images/shanidev.jpg", "title": "Shanivaar special"},
    {
      "image": "lib/assets/images/spell.jpg",
      "title": "Spell",
      "tag": "STARTS AT 499",
    },
    {"image": "lib/assets/images/rahu-ketu.jpg", "title": "Rahu-Ketu"},
    {
      "image": "lib/assets/images/reiki.jpg",
      "title": "Reiki Healing",
      "tag": "STARTS AT 199",
    },

    {
      "image": "lib/assets/images/bracelets.jpeg",
      "title": "Bracelets & Pendants",
    },
    {"image": "lib/assets/images/epooja.jpg", "title": "E-Pooja"},
    {"image": "lib/assets/images/vip-e-pooja.jpg", "title": "VIP E-Pooja"},
    {"image": "lib/assets/images/shanidev.jpg", "title": "Shanivaar special"},
    {
      "image": "lib/assets/images/spell.jpg",
      "title": "Spell",
      "tag": "STARTS AT 199",
    },
    {"image": "lib/assets/images/rahu-ketu.jpg", "title": "Rahu-Ketu"},
    {"image": "lib/assets/images/reiki.jpg", "title": "Reiki Healing"},
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

  /// yello card data
  List<Map<String, dynamic>> topSellData = [
    {
      "image": "lib/assets/images/couple.jpg",
      "title": "Attract your",
      "subTitle": "Love Spell",
    },
    {
      "image": "lib/assets/images/b1.png",
      "title": "Rose Quartz",
      "subTitle": "Bracelet with",
    },
    {
      "image": "lib/assets/images/stone.jpg",
      "title": "Gemstone",
      "subTitle": "Consultation",
    },

    {
      "image": "lib/assets/images/b2.png",
      "title": "Money Magnet",
      "subTitle": "Bracelet",
    },

    {
      "image": "lib/assets/images/b3.png",
      "title": "Dhan Yog",
      "subTitle": "Bracelet",
    },

    {
      "image": "lib/assets/images/b4.jpg",
      "title": "Raw Pyrite",
      "subTitle": "Bracelet",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,

        /// app bar
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: _buildAppBar(),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        drawer: MyDrawer(),

        /// -------------------- body ---------------------------- ///
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// poster part
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Container(
                        height: mqData.height * 0.22,
                        width: mqData.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(
                              "lib/assets/images/god_poster.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mangal Gochar(Transit)\nPooja",
                              style: myTextStyle18(
                                textColor: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(
                              width: mqData.width * 0.35,
                              child: Divider(
                                thickness: 1,
                                color: Colors.white30,
                              ),
                            ),
                            Text(
                              "MARS TRANSIT SPECIAL",
                              style: myTextStyle12(textColor: Colors.white),
                            ),
                            SizedBox(
                              width: mqData.width * 0.35,
                              child: Divider(
                                thickness: 1,
                                color: Colors.white30,
                              ),
                            ),

                            Text(
                              "Protect Yourself from anger,breakup&money issues!",
                              style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontSize: 8,
                              ),
                            ),
                            SizedBox(height: mqData.height * 0.02),

                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 2,
                                ),
                                child: Row(
                                  children: [
                                    Text("Participate", style: myTextStyle15()),
                                    SizedBox(width: 4),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: AppColors.primary,
                                          size: 18,
                                        ),
                                      ),
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

                /// show grid view
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: astroRemedy.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return astroRemedyCard(
                      image: astroRemedy[index]['image'],
                      name: astroRemedy[index]['title'],
                      tag: astroRemedy[index]['tag'],
                    );
                  },
                ),

                /// bottom part
                /// Top selling
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: mqData.height * 0.22,
                    decoration: BoxDecoration(color: AppColors.lightBackground),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 6,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Top Selling",
                                style: myTextStyle18(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "View All",
                                style: myTextStyle15(textColor: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),

                        /// top selling
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                            height: mqData.height * 0.15,
                            child: ListView.builder(
                              itemCount: topSellData.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return topSellCard(
                                  imagePath: topSellData[index]["image"],
                                  title: topSellData[index]["title"],
                                  subtitle: topSellData[index]["subTitle"],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8),

                /// Newly Launched
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: mqData.height * 0.22,
                    decoration: BoxDecoration(color: AppColors.lightBackground),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 6,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Newly Launched",
                                style: myTextStyle18(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "View All",
                                style: myTextStyle15(textColor: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),

                        /// Newly Launched
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                            height: mqData.height * 0.15,
                            child: ListView.builder(
                              itemCount: topSellData.length,
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              itemBuilder: (context, index) {
                                return topSellCard(
                                  imagePath: topSellData[index]["image"],
                                  title: topSellData[index]["title"],
                                  subtitle: topSellData[index]["subTitle"],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// ----------------------  WIDGETS -------------------------///
  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
      child: Row(
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
          Text("AstroRemedy", style: myTextStyle15()),

          Expanded(child: SizedBox(width: mqData.width)),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              border: Border.all(width: 1, color: AppColors.primary),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Row(
                children: [
                  Icon(Icons.restore_outlined, size: 15),
                  SizedBox(width: 4),
                  Text("Orders", style: myTextStyle12()),
                ],
              ),
            ),
          ),

          SizedBox(width: 12),

          /// language
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartScreen()),
              );
            },
            child: Icon(Icons.shopping_cart_outlined),
          ),
          SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SearchScreen()),
              );
            },
            child: Icon(Icons.search),
          ),
        ],
      ),
    );
  }

  Widget astroRemedyCard({
    required String image,
    required String name,
    String? tag,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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

          if (tag != null)
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red.withAlpha(180),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 2,
                  ),
                  child: Text(
                    tag ?? " ",
                    style: myTextStyle12(textColor: Colors.white),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  /// yello box
  Widget topSellCard({
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
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(title, style: myTextStyle12()),
        Text(subtitle, style: myTextStyle12()),
      ],
    );
  }
}
