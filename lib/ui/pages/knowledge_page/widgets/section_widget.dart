import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/section_title.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SectionWidget({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        // color: Colors.grey.shade300,
        // color: lightMaroon,
        color: lightYellow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: title),
          // spaceV8,
          ...children,
          // spaceV16,
        ],
      ),
    );
  }
}
