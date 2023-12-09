import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';

class MessageSide extends StatelessWidget {
  const MessageSide({
    super.key,
    required this.chatMessageSide,
  });

  final ChatMessageSide chatMessageSide;

  @override
  Widget build(BuildContext context) {
    return Text(chatMessageSide == ChatMessageSide.computerized
        ? "Computerized"
        : "You");
  }
}
