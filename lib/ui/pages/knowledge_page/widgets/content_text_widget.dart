import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class ContentTextWidget extends StatelessWidget {
  final String text;

  const ContentTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16.0, color: greyscale),
    );
  }
}