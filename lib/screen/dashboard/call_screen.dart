import 'package:flutter/material.dart';

import '../../helper/color.dart';
import '../../helper/custom_text_style.dart';
import '../../widgets/astro_call_card.dart';
import '../../widgets/astro_chat_card.dart';
import '../../widgets/my_carousel_slider.dart';
import '../../widgets/my_drawer.dart';
import '../../widgets/tab_card.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late Size mqData = MediaQuery.of(context).size;

  List<Map<String, dynamic>> chatData = [
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "20",
      "newPrice": "5/min",
      "orders": "9709",
      "name": "Pankaj",
      "language": "Hindi",
    },
    {
      "image": "lib/assets/images/men2.png",
      "oldPrice": "30",
      "newPrice": "8/min",
      "orders": "8452",
      "name": "Rohit",
      "language": "English",
    },
    {
      "image": "lib/assets/images/men1.png",
      "oldPrice": "25",
      "newPrice": "6/min",
      "orders": "6783",
      "name": "Amit",
      "language": "Bengali",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "40",
      "newPrice": "10/min",
      "orders": "4321",
      "name": "Suresh",
      "language": "Tamil",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "35",
      "newPrice": "7/min",
      "orders": "5590",
      "name": "Rajeev",
      "language": "Marathi",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "28",
      "newPrice": "6/min",
      "orders": "6134",
      "name": "Manoj",
      "language": "Gujarati",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "22",
      "newPrice": "4/min",
      "orders": "7210",
      "name": "Deepak",
      "language": "Kannada",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "50",
      "newPrice": "12/min",
      "orders": "8123",
      "name": "Karan",
      "language": "Punjabi",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "20",
      "newPrice": "5/min",
      "orders": "9709",
      "name": "Pankaj",
      "language": "Hindi",
    },
    {
      "image": "lib/assets/images/men2.png",
      "oldPrice": "30",
      "newPrice": "8/min",
      "orders": "8452",
      "name": "Rohit",
      "language": "English",
    },
    {
      "image": "lib/assets/images/men1.png",
      "oldPrice": "25",
      "newPrice": "6/min",
      "orders": "6783",
      "name": "Amit",
      "language": "Bengali",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "40",
      "newPrice": "10/min",
      "orders": "4321",
      "name": "Suresh",
      "language": "Tamil",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "35",
      "newPrice": "7/min",
      "orders": "5590",
      "name": "Rajeev",
      "language": "Marathi",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "28",
      "newPrice": "6/min",
      "orders": "6134",
      "name": "Manoj",
      "language": "Gujarati",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "22",
      "newPrice": "4/min",
      "orders": "7210",
      "name": "Deepak",
      "language": "Kannada",
    },
    {
      "image": "lib/assets/images/men3.png",
      "oldPrice": "50",
      "newPrice": "12/min",
      "orders": "8123",
      "name": "Karan",
      "language": "Punjabi",
    },
  ];

  List<Map<String, dynamic>> tabData = [
    {
      "icon": Icons.filter_list_alt,
      "iconColor": Colors.black45,
      "title": "Filter",
    },

    {"icon": Icons.all_out_rounded, "iconColor": Colors.yellow, "title": "All"},

    {
      "icon": Icons.favorite_border_rounded,
      "iconColor": Colors.red,
      "title": "Love",
    },
    {
      "icon": Icons.local_offer_outlined,
      "iconColor": Colors.greenAccent,
      "title": "Offer",
    },

    {
      "icon": Icons.collections_bookmark_rounded,
      "iconColor": Colors.pinkAccent,
      "title": "Education",
    },

    {
      "icon": Icons.card_travel_rounded,
      "iconColor": Colors.blue,
      "title": "Career",
    },

    {
      "icon": Icons.circle_outlined,
      "iconColor": Colors.pink,
      "title": "Marriage",
    },

    {
      "icon": Icons.health_and_safety_outlined,
      "iconColor": Colors.orange,
      "title": "Health",
    },

    {
      "icon": Icons.account_balance_wallet_outlined,
      "iconColor": Colors.deepPurpleAccent,
      "title": "Wealth",
    },

    {
      "icon": Icons.add_card_outlined,
      "iconColor": Colors.green,
      "title": "Finance",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,

        /// --- app bar --- ///
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: mqData.height * 0.09,
          flexibleSpace: _buildAppBar(),
        ),

        /// drawer
        drawer: MyDrawer(),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            /// Slide call here
            MyCarouselSlider(),

            /// divider
            Divider(thickness: 1, color: AppColors.primary),
            SizedBox(height: 12),

            /// tab bar
            SizedBox(
              height: mqData.height * 0.04,
              child: ListView.builder(
                itemCount: tabData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TabCard(
                    title: tabData[index]['title'],
                    icon: tabData[index]['icon'],
                    iconColor: tabData[index]['iconColor'],
                  );
                },
              ),
            ),

            SizedBox(height: 8),

            /// chat user in list view
            Expanded(
              child: ListView.builder(
                itemCount: chatData.length,
                itemBuilder: (context, index) {
                  final data = chatData[index];
                  return AstroCallCard(
                    image: data['image'],
                    name: data['name'],
                    oldPrice: data['oldPrice'],
                    newPrice: data['newPrice'],
                    orders: data["orders"],
                    language: data["language"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// -------------------------------- widgets ------------------------------------------////
  /// app bar build
  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
          ),
          SizedBox(width: 12),
          Text("Hi Rahul", style: myTextStyle21()),

          Expanded(child: SizedBox(width: mqData.width)),

          Container(
            height: mqData.height * 0.075,
            width: mqData.width * 0.3,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(21),
                topLeft: Radius.circular(21),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: mqData.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_balance_wallet_outlined),
                        Icon(Icons.currency_rupee_rounded),
                        Text("0", style: myTextStyle21()),
                        Icon(Icons.add_circle_rounded),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    "100% Cashback",
                    style: myTextStyle12(
                      textColor: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 12),

          /// search
          Icon(Icons.search, size: 27),

          SizedBox(width: 12),
          Icon(Icons.messenger_outline, size: 27),
        ],
      ),
    );
  }
}
