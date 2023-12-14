import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/page_knowledge.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/widgets/content_text_widget.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/widgets/section_widget.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/widgets/sub_section_widget.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class SpeakWordSection extends StatelessWidget {
  const SpeakWordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      title: 'SPEAK WORDS',
      children: [
        // Malayalam Subsection
        SubSectionWidget(
          title: 'Malayalam',
          // color: const Color(0xFF8E354A), // Maroon shade

          color: lightTeal,
          children: [
            const ContentTextWidget(
              text: "മലയാളം സാധാരണമായ മാധ്യമങ്ങളിലൂടെ പ്രചരിക്കുന്ന ഒരു ഭാഷ...",
            ),
            ImageListViewWidget(),
          ],
        ),

        // English Subsection
        SubSectionWidget(
          title: 'English',
          // color: Colors.lime, // Lime color
          color: lightTeal,
          children: [
            const ContentTextWidget(
              text:
                  "English is a widely spoken language with a rich literary tradition...",
            ),
            ImageListViewWidget(),
          ],
        ),
      ],
    );
  }
}