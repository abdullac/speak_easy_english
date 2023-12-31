import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class HomePageFooter extends StatelessWidget {
  const HomePageFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
          color: teal,
          fontSize: 12,
        );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        homePageFooterText,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}