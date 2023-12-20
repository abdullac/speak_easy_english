import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/main_page/page_main.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/page_knowledge.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class IntroductionPageButtons extends StatelessWidget {
  final String mainPageTitle;
  const IntroductionPageButtons({
    super.key,
    required this.mainPageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const KnowledgeButton(),
        GotoButton(mainPageTitle: mainPageTitle),
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
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(maroon),
      ),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (builder) => const PageKnowledge()));
      },
      child: Text(
        "KNOWLEDGE",
        style: TextStyle(
          color: limeYellow,
        ),
      ),
    );
  }
}

class GotoButton extends StatelessWidget {
  final String mainPageTitle;
  const GotoButton({
    super.key,
    required this.mainPageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: maroon,
          width: 2,
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (builder) => PageMain(
                  mainPageTitle: mainPageTitle,
                )));
      },
      child: const Text(
        "GO TO",
        style: TextStyle(
          color: maroon,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
