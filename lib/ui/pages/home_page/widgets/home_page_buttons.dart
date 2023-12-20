import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/page_beginner.dart';
import 'package:speak_easy_english/ui/pages/introduction_page/page_introduction.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePageOutlinedBtn(
          btnText: "BEGINNER",
          onBtnPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (builder) => const PageIntroduction()));
          },
        ),
        HomePageOutlinedBtn(
          btnText: "INTERMEDIATE",
          onBtnPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (builder) => const PageIntroduction()));
          },
        ),
        HomePageOutlinedBtn(
          btnText: "ADVANCED",
          onBtnPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (builder) => const PageIntroduction()));
          },
        ),
        spaceV8,
        const HomePageElevatedBtn(),
      ],
    );
  }
}

class HomePageOutlinedBtn extends StatelessWidget {
  final String btnText;
  final void Function()? onBtnPressed;
  const HomePageOutlinedBtn({
    super.key,
    required this.btnText,
    required this.onBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    var outlinedButton = OutlinedButton(
      onPressed: 
        onBtnPressed
      ,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: maroon,
          width: 3,
        ),
      ),
      child: Text(
        btnText,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          color: maroon,
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: outlinedButton,
    );
  }
}

class HomePageElevatedBtn extends StatelessWidget {
  const HomePageElevatedBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var styleFrom = ElevatedButton.styleFrom(
      backgroundColor: maroon, // Same color as CONTINUE button
    );
    var textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: limeYellow,
    );
    return ElevatedButton(
      onPressed: () {},
      style: styleFrom,
      child: Text(
        'GET PRO',
        style: textStyle,
      ),
    );
  }
}
