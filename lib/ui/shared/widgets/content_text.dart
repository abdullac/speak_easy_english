import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';


class ContentText extends StatelessWidget {
  final String text;
  const ContentText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16.0,
          color: greyscale,
        ),
      ),
    );
  }
}
