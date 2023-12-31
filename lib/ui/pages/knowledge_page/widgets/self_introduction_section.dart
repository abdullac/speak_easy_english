import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/chat_page/page_chat.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/widgets/content_text_widget.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/widgets/section_widget.dart';
import 'package:speak_easy_english/ui/pages/speak_knowledge_page/page_speak_knowledge.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/paddings.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';

class SelfIntroduceSection extends StatelessWidget {
  const SelfIntroduceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      title: 'SELF INTRODUCE',
      children: [
        const ContentTextWidget(
          text: "സ്വയം പരിചയപ്പെടുത്തുക: സ്വന്തം കുറിപ്പ് ഇങ്ങനെയാണ്...",
        ),
        Container(
          padding: paddingAll4,
          decoration: BoxDecoration(
            // color: Colors.teal.shade400,

            // color: lightMaroon,
            color: lightTeal,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                // Introduced words
                child: Container(
                  width: double.infinity,
                  height: 40,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                      "User spoken words in malayalam\nfdsgfdg\nssdfgfsdgfdg\ngertgdfgfdgdf\ngddfgdfgdfg"),
                ),
              ),
              spaceV4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        // builder: (builder) => const PageSpeakKnowledge(),
                        builder: (builder) => const PageChat(
                          chatPageTitle: "Self Introduce",
                          chatPageSubTitle: "You can Introduce to me your self",
                        ),
                      ));
                    },
                    icon: const Icon(
                      Icons.mic,
                      color: lightGreyscale,
                    ),
                    label: const Text(
                      "TAKE INTRODUCTION",
                      style: TextStyle(
                        color: lightYellow,
                      ),
                    ),
                    style: const ButtonStyle(
                      // backgroundColor: MaterialStatePropertyAll(maroon),
                      backgroundColor: MaterialStatePropertyAll(teal),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      // backgroundColor: MaterialStatePropertyAll(maroon),
                      backgroundColor: MaterialStatePropertyAll(teal),
                    ),
                    child: const Text(
                      "HELP",
                      style: TextStyle(
                        color: lightYellow,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // TextFieldWithMicWidget(),
      ],
    );
  }
}
