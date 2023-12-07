  import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_outlined_button.dart';



class LevelButtons extends StatelessWidget {
  const LevelButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomeOutlinedButton(text: "SINGLE"),
        CustomeOutlinedButton(text: "DOUBLE"),
        CustomeOutlinedButton(text: "TRIPLE"),
      ],
    );
  }
}