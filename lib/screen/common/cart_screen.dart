import 'package:astrotalk_app/helper/color.dart';
import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: Text(
          'My Cart',
          style: myTextStyle18(fontWeight: FontWeight.bold)
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Cart Image
            Image.asset('lib/assets/icons/bag.png', height: 150),
            const SizedBox(height: 20),
            // Title
            Text(
              'Your Cart is Empty',
              style: myTextStyle21(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Subtitle
            Text(
              'Looks like you haven’t added any product\nto your cart yet',
              textAlign: TextAlign.center,
              style: myTextStyle12(),
            ),
            const SizedBox(height: 30),
            // Shop Now Button
            ElevatedButton(
              onPressed: () {
                // Navigate to shop screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
              ),
              child: Text(
                'Shop Now',
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
