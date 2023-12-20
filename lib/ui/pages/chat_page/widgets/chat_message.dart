import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';
import 'package:speak_easy_english/utils/constents/paddings.dart';

class ChatMessage extends StatelessWidget {
  final ChatMessageSide chatMessageSide;
  const ChatMessage({
    super.key,
    required this.chatMessageSide,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll12,
      decoration: chatMessageSide == ChatMessageSide.computerized
          ? const BoxDecoration(
              color: lightMaroon,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            )
          : const BoxDecoration(
              color: teal,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
      child: Text(
        "Orange",
        style: TextStyle(
          color: chatMessageSide == ChatMessageSide.computerized
              ? maroon
              : lightTeal,
        ),
      ),
    );
  }
}
