import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/chat_page/widgets/chat_message_box.dart';
import 'package:speak_easy_english/ui/pages/chat_page/widgets/chat_textfield.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/sample_icon_buttons.dart';
import 'package:speak_easy_english/ui/shared/widgets/icon_buttonwith_shadow.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';

class PageSpeakKnowledge extends StatelessWidget {
  const PageSpeakKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          )
        ],
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButtonWithShadow(icon: Icons.volume_up),
                    IconButtonWithShadow(icon: Icons.mic),
                    IconButtonWithShadow(icon: Icons.mic_off),
                  ],
                ),
        ),
      ),
    );
  }
  
}
