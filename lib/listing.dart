import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final double fontSize;
  final Color textColor;
  final String image;
  final FontWeight fontWeight;
  final Color cardColor; // Now accepts a Color object
  final VoidCallback? onTap; // Add an onTap callback

  ListWidget({
    required this.title,
    required this.subtitle,
    required this.textColor,
    required this.fontSize,
    required this.price,
    required this.image,
    required this.fontWeight,
    required this.cardColor,
    this.onTap, // Include onTap as an optional parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Use the onTap callback
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: cardColor, // Use the specified color directly
          child: Row(
            children: [
              Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: fontSize,
                            color: textColor,
                            fontWeight: fontWeight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: fontSize,
                            color: textColor,
                            fontWeight: fontWeight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          price,
                          style: TextStyle(
                            fontSize: fontSize,
                            color: textColor,
                            fontWeight: fontWeight,
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
      ),
    );
  }
}
