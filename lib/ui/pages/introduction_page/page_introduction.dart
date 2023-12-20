import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/introduction_page/widgets/introduction_buttons.dart';
import 'package:speak_easy_english/ui/pages/introduction_page/widgets/introduction_content.dart';
import 'package:speak_easy_english/ui/pages/introduction_page/widgets/introduction_title.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/paddings.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';

class PageIntroduction extends StatelessWidget {
  const PageIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomLeft,
        colors: [
          maroon,
          limeYellow,
        ], // Dark Maroon to Lime Yellow
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maroon,
      ),
      body: Container(
        decoration: boxDecoration,
        child: const Padding(
          padding: paddingAll8,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntroductionPageTitle(),
                spaceV8,
                IntroductionPageContent(),
                spaceV16,
                IntroductionPageButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
