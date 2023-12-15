import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class HomePageTitles extends StatelessWidget {
  const HomePageTitles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomePageTitle(),
        spaceV8,
        HomePageSubTitle(),
      ],
    );
  }
}

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      appName,
      style: TextStyle(
        color: maroon,
        fontSize: 24,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class HomePageSubTitle extends StatelessWidget {
  const HomePageSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      languageConversion,
      style: TextStyle(
        color: teal,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
