import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/content_text.dart';
import 'package:speak_easy_english/ui/shared/widgets/image_listview.dart';
import 'package:speak_easy_english/ui/shared/widgets/section_title.dart';
import 'package:speak_easy_english/utils/constents/border_radius.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';
import 'package:speak_easy_english/utils/constents/paddings.dart';
import 'package:speak_easy_english/utils/constents/strings.dart';

class SamplesSection extends StatelessWidget {
  const SamplesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll4,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            maroon,
            lightMaroon,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        ),
        borderRadius: borderRadius12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "SAMPLES"),
          ContentText(
            text: beginnerSamplesContent,
          ),
          ImageListView(
              onTapImageListView: OnTapImageListView.gotoSamplesPage,
              itemText: "text"),
        ],
      ),
    );
  }
}
