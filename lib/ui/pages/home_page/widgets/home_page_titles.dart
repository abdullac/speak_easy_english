
import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
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
        SizedBox(height: 8),
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
    return Text(
      appName,
      style: const TextStyle(
        color: titleColor,
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
    return Text(
      languageConversion,
      style: TextStyle(
        color: Colors.teal[600],
        fontSize: 12,
      ),
    );
  }
}
