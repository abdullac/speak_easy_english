import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class SubSectionWidget extends StatelessWidget {
  final String title;
  final Color color;
  final List<Widget> children;

  const SubSectionWidget(
      {super.key,
      required this.title,
      required this.color,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        // color: color,
        // color: teale,
        color: lightGreyscale,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
              // color: lightTeal,
              color: teale,
            ),
          ),
          const SizedBox(height: 8.0),
          ...children,
        ],
      ),
    );
  }
}