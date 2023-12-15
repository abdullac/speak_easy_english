import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomePageOutlinedBtn(btnText: "BEGINNER"),
        HomePageOutlinedBtn(btnText: "INTERMEDIATE"),
        HomePageOutlinedBtn(btnText: "ADVANCED"),
        spaceV8,
        HomePageElevatedBtn(),
      ],
    );
  }
}

class HomePageOutlinedBtn extends StatelessWidget {
  final String btnText;
  const HomePageOutlinedBtn({
    super.key,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    var outlinedButton = OutlinedButton(
      onPressed: () {},
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
