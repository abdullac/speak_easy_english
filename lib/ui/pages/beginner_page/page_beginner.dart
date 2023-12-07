import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_challenge_listview.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_content_text.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_image_listview.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_level_buttons.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_section_title.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/samples_section.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class PageBeginner extends StatelessWidget {
  const PageBeginner({super.key});

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      title: const Text(
        'Beginner',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: appBarColor, // Maroon shade
    );
    return Scaffold(
      appBar: appBar2,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LEVELS Section
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 255, 221, 221),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(title: "LEVELS"),
                  ContentText(
                    text: beginnerLevelsContent,
                  ),
                  LevelButtons(),
                ],
              ),
            ),

            const SizedBox(
              height: 12,
            ),
            // SAMPLES Section
            const SamplesSection(),

            const SizedBox(
              height: 12,
            ),
            // CHALLENGE Section
            Container(
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  // border: Border.all(color: appBarColor),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: "CHALLENGE"),
                  ContentText(
                    text: beginnerChallengeContgent,
                  ),
                  const ChallengeListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildIntroductionContent() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       contentText(
  //         "Understand what a beginner is and how to study in the Speak Easy English app. "
  //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
  //         "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
  //         visibility: 1.0,
  //       ),
  //     ],
  //   );
  // }
}
