import 'package:flutter/material.dart';

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
        side: const BorderSide(color: Color(0xFF009688)), // Teal shade
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFF009688)), // Teal shade
      ),
    );
  }
}
