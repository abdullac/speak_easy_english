import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/challange_page/widgets/chat_message_box.dart';
import 'package:speak_easy_english/ui/pages/challange_page/widgets/chat_textfield.dart';
import 'package:speak_easy_english/ui/shared/widgets/icon_buttonwith_shadow.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';

class PageChallange extends StatelessWidget {
  const PageChallange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightYellow,
      appBar: AppBar(
        backgroundColor: maroon,
        title: const Text(
          'Chat with Me',
          style: TextStyle(
            color: lightYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 5),
          child: Text(
            "You can speak to me",
            style: TextStyle(
              color: lightGreyscale,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                ChatMessageBox(chatMessageSide: ChatMessageSide.computerized),
                ChatMessageBox(chatMessageSide: ChatMessageSide.user),
                ChatMessageBox(chatMessageSide: ChatMessageSide.computerized),
                ChatMessageBox(chatMessageSide: ChatMessageSide.user),
                ChatMessageBox(chatMessageSide: ChatMessageSide.computerized),
                ChatMessageBox(chatMessageSide: ChatMessageSide.user),
                ChatMessageBox(chatMessageSide: ChatMessageSide.computerized),
                ChatMessageBox(chatMessageSide: ChatMessageSide.user),
                // Chat messages go here
                // You can use ListTile or other widgets to display messages
              ],
            ),
          ),
          const Divider(height: 1.0),
          bottomTextComposer(context),
        ],
      ),
    );
  }

  Widget bottomTextComposer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: limeYellow,
      ),
      child: IconTheme(
        data: const IconThemeData(color: maroon),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: const Row(
            children: [
              IconButtonWithShadow(icon: Icons.mic),
              ChatTextField(),
              IconButtonWithShadow(icon: Icons.send),
              IconButtonWithShadow(icon: Icons.volume_up),
            ],
          ),
        ),
      ),
    );
  }
}
