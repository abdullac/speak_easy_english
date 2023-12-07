import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_content_text.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_image_listview.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_section_title.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class SamplesSection extends StatelessWidget {
  const SamplesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              appBarColor,
              Colors.lime,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: "SAMPLES"),
          ContentText(
            text: beginnerSamplesContent,
          ),
          ImageListView(),
        ],
      ),
    );
  }
}
