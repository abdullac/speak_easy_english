import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/border_radius.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class CustomeOutlinedButton extends StatelessWidget {
  final String text;
  const CustomeOutlinedButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Handle button click
      },
      style: OutlinedButton.styleFrom(
        // side: const BorderSide(color: Color(0xFF009688)), // Teal shade
        side: const BorderSide(color: teal),
        shape:
            // RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            RoundedRectangleBorder(borderRadius: borderRadius10),
      ),
      child: Text(
        text,
        style: const TextStyle(color: teal), // Teal shade
      ),
    );
  }
}
