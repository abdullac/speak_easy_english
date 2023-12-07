import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class IntroductionPageContent extends StatelessWidget {
  const IntroductionPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      beginnerIntroductionContent,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white70,
      ),
    );
  }
}
