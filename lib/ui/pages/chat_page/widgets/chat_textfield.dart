
import 'package:flutter/material.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        onChanged: (text) {
          // Handle text input changes
        },
        onSubmitted: (text) {
          // Handle text submitted
        },
        decoration: const InputDecoration.collapsed(
          hintText: 'Send a message',
        ),
      ),
    );
  }
}
