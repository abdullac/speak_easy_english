import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/chat_page/widgets/chat_message.dart';
import 'package:speak_easy_english/ui/pages/chat_page/widgets/message_side.dart';
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
      child: Column(
        crossAxisAlignment: chatMessageSide == ChatMessageSide.computerized
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          MessageSide(chatMessageSide: chatMessageSide),
          ChatMessage(chatMessageSide: chatMessageSide),
        ],
      ),
    );
  }
}
