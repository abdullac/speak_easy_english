import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class IntroductionPageTitle extends StatelessWidget {
  const IntroductionPageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Text(
      'INTRODUCTION',
      style: TextStyle(
        color: lightYellow,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
