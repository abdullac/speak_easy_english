import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/challange_page/page_challange.dart';
import 'package:speak_easy_english/ui/pages/challange_page/widgets/chat_message.dart';
import 'package:speak_easy_english/ui/pages/challange_page/widgets/message_side.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';

class ChatMessageBox extends StatelessWidget {
  final ChatMessageSide chatMessageSide;
  const ChatMessageBox({
    super.key,
    required this.chatMessageSide,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      decoration: chatMessageSide == ChatMessageSide.computerized
          ? const BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            )
          : const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: chatMessageSide == ChatMessageSide.computerized
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            MessageSide(chatMessageSide: chatMessageSide),
            const ChatMessage(),
          ],
        ),
      ),
    );
  }
}
