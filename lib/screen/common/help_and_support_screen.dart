import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../helper/color.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  late Size mqData = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// --- App bar --- ///
      appBar: AppBar(
        title: Text(
          'Help & Support',
          style: myTextStyle15(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,

        /// --- back button --- ///
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      /// --- body --- ///
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// user card
            _buildUserCard(),
            SizedBox(height: 21),

            /// Quick Access
            _buildQuickAccess(),
       SizedBox(height: mqData.height * 0.06),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(width: 1, color: Colors.black12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.support_agent_rounded),
                    SizedBox(width: 4),
                    Text('Customer Support', style: myTextStyle15()),
                  ],
                ),
              ),
            ),

            SizedBox(height: mqData.height * 0.03),

            /// Account & Setting
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "Account & Setting",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: mqData.height * 0.03),

            /// call here Account setting
            _buildAccountSettings(),
          ],
        ),
      ),
    );
  }

  ///  ------------- Widgets --------------------------- ///
  /// user card
  Widget _buildUserCard() {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("lib/assets/images/profile.png"),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rahul",
                      style: myTextStyle18(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "7970989057",
                      style: myTextStyle12(textColor: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.edit_rounded, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightBackground,
              borderRadius: BorderRadius.circular(10),
              border: Border(
                top: BorderSide(width: 1, color: AppColors.primary),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet & Recharge",
                        style: myTextStyle15(
                          fontWeight: FontWeight.bold,
                          textColor: Colors.black38,
                        ),
                      ),

                      Row(
                        children: [
                          Icon(Icons.currency_rupee_rounded),

                          Text(
                            "0",
                            style: myTextStyle18(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Recharge",
                      style: myTextStyle12(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccess() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _iconButton(Icons.history, "My Orders")),
          Expanded(
            child: _iconButton(Icons.account_balance_wallet, "My Wallet"),
          ),
          Expanded(
            child: _iconButton(Icons.support_agent, "Astrologer Assistant"),
          ),
        ],
      ),
    );
  }

  Widget _iconButton(IconData icon, String label) {
    return Container(
      height: mqData.height * 0.12,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.yellow.shade100,
              child: Icon(icon, color: Colors.black),
            ),
            const SizedBox(height: 6),
            Text(label, style: myTextStyle12()),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountSettings() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text("Favorite Astrologers", style: myTextStyle15()),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings", style: myTextStyle15()),
        ),
        ListTile(
          leading: Icon(Icons.favorite_border_rounded),
          title: Text("Manage My Privacy", style: myTextStyle15()),
        ),
      ],
    );
  }
}
