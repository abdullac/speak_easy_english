import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class IntroductionPageButtons extends StatelessWidget {
  const IntroductionPageButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        KnowledgeButton(),
        GotoButton(),
      ],
    );
  }
}

class KnowledgeButton extends StatelessWidget {
  const KnowledgeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(appBarColor)),
      onPressed: () {},
      child: Text(
        "KNOWLEDGE",
        style: TextStyle(color: Colors.lime[300]),
      ),
    );
  }
}

class GotoButton extends StatelessWidget {
  const GotoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: appBarColor,
            width: 2,
          ),
        ),
        onPressed: () {},
        child: Text(
          "GO TO",
          style: TextStyle(
            color: appBarColor,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
