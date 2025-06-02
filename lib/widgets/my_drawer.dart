import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  late Size mqData = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: mqData.width * 0.85,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            /// profile part
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        "lib/assets/images/profile.png",
                        height: mqData.height * 0.08,
                        width: mqData.height * 0.08,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Rahul",
                              style: myTextStyle15(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 2),
                            Icon(Icons.edit_rounded, size: 15),
                          ],
                        ),
                        Text("+91-7970989057", style: myTextStyle15()),
                      ],
                    ),
                  ],
                ),

                /// Close button
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close_rounded, size: 32),
                ),
              ],
            ),

            SizedBox(height: mqData.height * 0.01),

            /// list view
            SizedBox(
              height: mqData.height * 0.65,
              child: ListView(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  /// list part
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Home", style: myTextStyle15()),
                    leading: Icon(Icons.home_filled),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Book a Pooja", style: myTextStyle15()),
                    leading: Icon(Icons.grass_outlined),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text(
                      "Customer Support chat",
                      style: myTextStyle15(),
                    ),
                    leading: Icon(Icons.support_agent_rounded),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Wallet Transactions", style: myTextStyle15()),
                    leading: Icon(Icons.account_balance_wallet_outlined),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Redeem Gift Card", style: myTextStyle15()),
                    leading: Icon(Icons.card_giftcard_rounded),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Order History", style: myTextStyle15()),
                    leading: Icon(Icons.history),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("AstroRemedy", style: myTextStyle15()),
                    leading: Icon(Icons.store_rounded),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Astrology Blog", style: myTextStyle15()),
                    leading: Icon(Icons.book),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text(
                      "Chat with Astrologers",
                      style: myTextStyle15(),
                    ),
                    leading: Icon(Icons.chat_bubble_outline_rounded),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("AstroRemedy", style: myTextStyle15()),
                    leading: Icon(Icons.store_rounded),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("My Following", style: myTextStyle15()),
                    leading: Icon(Icons.person_search_rounded),
                  ),

                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Free Service", style: myTextStyle15()),
                    leading: Icon(Icons.local_offer_outlined),
                  ),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text("Setting", style: myTextStyle15()),
                    leading: Icon(Icons.settings),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Also available on", style: myTextStyle15())],
            ),
            SizedBox(height: 11),

            /// social media icons
            Row(
              children: [
                Image.asset(
                  "lib/assets/icons/apple.png",
                  height: mqData.height * 0.035,
                  width: mqData.height * 0.035,
                ),
                SizedBox(width: 8),
                Image.asset(
                  "lib/assets/icons/globe.png",
                  height: mqData.height * 0.035,
                  width: mqData.height * 0.035,
                ),
                SizedBox(width: 8),
                Image.asset(
                  "lib/assets/icons/youtube (3).png",
                  height: mqData.height * 0.035,
                  width: mqData.height * 0.035,
                ),
                SizedBox(width: 8),
                Image.asset(
                  "lib/assets/icons/facebook (3).png",
                  height: mqData.height * 0.035,
                  width: mqData.height * 0.035,
                ),
                SizedBox(width: 8),
                Image.asset(
                  "lib/assets/icons/instagram (4).png",
                  height: mqData.height * 0.035,
                  width: mqData.height * 0.035,
                ),
                SizedBox(width: 8),
                Image.asset(
                  "lib/assets/icons/linkedin (5).png",
                  height: mqData.height * 0.035,
                  width: mqData.height * 0.035,
                ),
              ],
            ),

            SizedBox(height: 11),

            /// version
            Text(
              "Version 1.1.359",
              style: myTextStyle15(
                textColor: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: mqData.height * 0.01),
          ],
        ),
      ),
    );
  }
}
