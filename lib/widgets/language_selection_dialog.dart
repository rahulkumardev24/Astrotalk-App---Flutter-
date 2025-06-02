import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/widgets/my_text_button.dart';
import 'package:flutter/material.dart';

class LanguageSelectionDialog extends StatelessWidget {
  const LanguageSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    /// Example language list
    final List<Map<String, String>> languages = [
      {'code': 'ENG', 'label': 'English'},
      {'code': 'हिंदी', 'label': 'Hindi'},
      {'code': 'ਪੰਜਾਬੀ', 'label': 'Punjabi'},
      {'code': 'मराठी', 'label': 'Marathi'},
      {'code': 'తెలుగు', 'label': 'Telugu'},
      {'code': 'ಕನ್ನಡ', 'label': 'Kannada'},
      {'code': 'বাংলা', 'label': 'Bengali'},
    ];

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title Row with Close Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose your app language',
                  style: myTextStyle18(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Language Grid
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children:
                  languages.map((lang) {
                    return LanguageTile(
                      code: lang['code']!,
                      label: lang['label']!,
                      isSelected: lang['label'] == 'English',
                    );
                  }).toList(),
            ),

            const SizedBox(height: 20),

            Text(
              "*Malayalam, Tamil, Gujarati and Odia are coming soon!",
              style: myTextStyle12(),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            /// Apply Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: MyTextButton(
                  btnText: 'APPLY',
                  borderRadius: 11,
                  onPress: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  final String code;
  final String label;
  final bool isSelected;

  const LanguageTile({
    super.key,
    required this.code,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 65,
      decoration: BoxDecoration(
        color: isSelected ? Colors.yellow[100] : Colors.white,
        border: Border.all(
          color: isSelected ? Colors.yellow.shade700 : Colors.grey.shade400,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(code, style: myTextStyle15(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(label, style: myTextStyle15(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
