import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SectionWidget({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        // color: Colors.grey.shade300,
        // color: lightMaroon,
        color: lightYellowe,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: maroon,
            ),
          ),
          const SizedBox(height: 8.0),
          ...children,
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}