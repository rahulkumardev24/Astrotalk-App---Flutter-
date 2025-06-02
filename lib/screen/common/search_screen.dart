import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late Size mqData = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// ---- app bar ----------- ///
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search astrologers, astromall products',
            hintStyle: myTextStyle15(textColor: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),

      /// --- body ---- ///
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top Services',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildServiceButton('Call', Icons.call, Colors.blue.shade50),
                _buildServiceButton('Chat', Icons.chat, Colors.pink.shade50),
                _buildServiceButton('Live', Icons.wifi, Colors.yellow.shade50),
                _buildServiceButton(
                  'AstroMall',
                  Icons.lock,
                  Colors.green.shade50,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Quick Link',
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildQuickLink(
                  Icons.account_balance_wallet,
                  'Wallet',
                  Colors.brown,
                ),
                _buildQuickLink(
                  Icons.headset_mic,
                  'Customer\nSupport',
                  Colors.blue,
                ),
                _buildQuickLink(
                  Icons.shopping_bag,
                  'Order\nHistory',
                  Colors.greenAccent,
                ),
                _buildQuickLink(Icons.person, 'Profile', Colors.orangeAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceButton(String text, IconData icon, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Text(
              text,
              style: myTextStyle15(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickLink(IconData icon, String label, Color iconColor) {
    return Container(
      width: 80,
      height: mqData.height * 0.1,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 32, color: iconColor),
          const SizedBox(height: 8),
          Text(label, style: myTextStyle12(), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
