import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../helper/color.dart';

class AstroCallCard extends StatefulWidget {
  String image;
  String name;
  String language;
  String oldPrice;
  String newPrice;
  String orders;
  AstroCallCard({
    super.key,
    required this.image,
    required this.name,
    required this.oldPrice,
    required this.newPrice,
    required this.orders,
    required this.language,
  });

  @override
  State<AstroCallCard> createState() => _AstroChatCardState();
}

class _AstroChatCardState extends State<AstroCallCard> {
  late Size mqData = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Colors.black12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              /// left part
              /// profile part
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    Container(
                      height: mqData.height * 0.12,
                      width: mqData.height * 0.12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: AppColors.secondary,
                        ),
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    /// rating star
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.black45, size: 21),
                        Icon(Icons.star, color: Colors.black45, size: 21),
                        Icon(Icons.star, color: Colors.black45, size: 21),
                        Icon(Icons.star, color: Colors.black45, size: 21),
                        Icon(Icons.star, color: Colors.black45, size: 21),
                      ],
                    ),

                    Text(
                      "${widget.orders} orders",
                      style: myTextStyle15(textColor: Colors.black45),
                    ),
                  ],
                ),
              ),

              /// right part
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /// name
                            Text(
                              widget.name,
                              style: myTextStyle21(fontWeight: FontWeight.bold),
                            ),

                            /// verify icon
                            Icon(
                              Icons.verified_rounded,
                              color: Colors.green,
                              size: 32,
                            ),
                          ],
                        ),
                        Text(
                          "Tarot,Life Coach",
                          style: myTextStyle18(textColor: Colors.black45),
                        ),

                        /// language
                        Text(
                          widget.language,
                          style: myTextStyle18(textColor: Colors.black45),
                        ),
                        Text(
                          "Exp- 3 Years",
                          style: myTextStyle18(textColor: Colors.black45),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              color: Colors.black38,
                            ),
                            Text(
                              widget.oldPrice,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black45,
                                fontFamily: "primary",
                                decorationColor: Colors.black45,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),

                            Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee_rounded,
                                  color: Colors.red,
                                ),
                                Text(
                                  widget.newPrice,
                                  style: myTextStyle18(
                                    textColor: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          side: BorderSide(width: 1, color: Colors.green),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Call",
                            style: myTextStyle18(
                              fontWeight: FontWeight.bold,
                              textColor: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
