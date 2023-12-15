import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_challenge_listview.dart';
import 'package:speak_easy_english/ui/shared/widgets/content_text.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_level_buttons.dart';
import 'package:speak_easy_english/ui/shared/widgets/section_title.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/samples_section.dart';
import 'package:speak_easy_english/utils/constents/border_radius.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/paddings.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class PageBeginner extends StatelessWidget {
  const PageBeginner({super.key});

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      title: const Text(
        'BEGINNER',
        style: TextStyle(
          color: lightYellow,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: maroon, // Maroon shade
    );
    return Scaffold(
      backgroundColor: lightYellow,
      appBar: appBar2,
      body: const SingleChildScrollView(
        padding: paddingAll8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LevelsSection(),
            spaceV12,
            SamplesSection(),
            spaceV12,
            ChallangeSection(),
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

class LevelsSection extends StatelessWidget {
  const LevelsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll8,
      decoration: BoxDecoration(
        borderRadius: borderRadius12,
        color: lightMaroon,
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
    );
  }
}

class ChallangeSection extends StatelessWidget {
  const ChallangeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll4,
      decoration: BoxDecoration(
        color: lightTeal,
        // border: Border.all(color: appBarColor),
        borderRadius: borderRadius12,
      ),
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
    );
  }
}
