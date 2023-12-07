import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/introduction_page/widgets/introduction_buttons.dart';
import 'package:speak_easy_english/ui/pages/introduction_page/widgets/introduction_content.dart';
import 'package:speak_easy_english/ui/pages/introduction_page/widgets/introduction_title.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class PageIntroduction extends StatelessWidget {
  const PageIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 128, 0, 17),
          Colors.lime,
        ], // Dark Maroon to Lime Yellow
      ),
    );
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntroductionPageTitle(),
                SizedBox(height: 8),
                IntroductionPageContent(),
                SizedBox(height: 16),
                IntroductionPageButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
