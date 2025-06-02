import 'package:astrotalk_app/helper/color.dart';
import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/material.dart';

class AddMoneyScreen extends StatefulWidget {
  AddMoneyScreen({super.key});

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  /// recharge option data
  final List<Map<String, dynamic>> rechargeOptions = [
    {"amount": 50, "extra": "100% Extra"},
    {"amount": 100, "extra": "100% Extra"},
    {"amount": 200, "extra": "50% Extra"},
    {"amount": 500, "extra": "50% Extra"},
    {"amount": 1000, "extra": "5% Extra"},
    {"amount": 2000, "extra": "10% Extra"},
    {"amount": 3000, "extra": "10% Extra"},
    {"amount": 4000, "extra": "12% Extra"},
    {"amount": 8000, "extra": "12% Extra"},
    {"amount": 15000, "extra": "15% Extra"},
    {"amount": 20000, "extra": "15% Extra"},
    {"amount": 50000, "extra": "20% Extra"},
    {"amount": 100000, "extra": "20% Extra"},
  ];

  late Size mqData = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          "Add money to wallet",
          style: myTextStyle15(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),

      /// --- body --- ///
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  "Available Balance",
                  style: myTextStyle12(textColor: Colors.grey),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.currency_rupee_rounded, size: 24),
                    Text(
                      "0",
                      style: myTextStyle24(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                /// Use fixed height for GridView inside scrollable content
                GridView.builder(
                  itemCount: rechargeOptions.length,
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Prevent internal scroll
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.4,
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11,
                  ),
                  itemBuilder: (context, index) {
                    final option = rechargeOptions[index];
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            option['amount'].toString(),
                            style: myTextStyle18(fontWeight: FontWeight.bold),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.1),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  option['extra'],
                                  style: myTextStyle12(textColor: Colors.green),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                const SizedBox(height: 16),

                /// Bottom Redeem Card
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.card_giftcard_rounded,
                        color: Colors.orange,
                        size: 28,
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "Redeem Gift Card",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text("Redeem"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
