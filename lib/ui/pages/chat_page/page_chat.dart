import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/chat_page/widgets/chat_message_box.dart';
import 'package:speak_easy_english/ui/pages/chat_page/widgets/chat_textfield.dart';
import 'package:speak_easy_english/ui/shared/widgets/icon_buttonwith_shadow.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';

class PageChat extends StatelessWidget {
  final String chatPageTitle;
  final String chatPageSubTitle;
  const PageChat({
    super.key,
    required this.chatPageTitle,
    required this.chatPageSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightYellow,
      appBar: AppBar(
        backgroundColor: maroon,
        title: Text(
          chatPageTitle,
          style: const TextStyle(
            color: lightYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 5),
          child: Text(
            chatPageSubTitle,
            style: const TextStyle(
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
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWithShadow(icon: Icons.volume_up),
                  ChatTextField(),
                  IconButtonWithShadow(icon: Icons.mic),
                  IconButtonWithShadow(icon: Icons.mic_off),
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 8.0),
            //   child: const Row(
            //     children: [
            //       IconButtonWithShadow(icon: Icons.mic),
            //       ChatTextField(),
            //       IconButtonWithShadow(icon: Icons.send),
            //       IconButtonWithShadow(icon: Icons.volume_up),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
