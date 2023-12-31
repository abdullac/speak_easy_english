import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/item_name_button.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/sample_icon_buttons.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/sample_image_listview.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/image_item_background.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class PageSample extends StatelessWidget {
  final String categoryName;
  final String bgImage;
  const PageSample({
    super.key,
    required this.categoryName,
    required this.bgImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
          style: const TextStyle(
            color: lightYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: maroon,
      ),
      body:  Stack(
        children: [
          ImageItemBackground(bgImage: bgImage), // Background image
          const SampleImageListview(),
          const ItemNameButton(), // WordText
          const SampleIconButtons(),
        ],
      ),
    );
  }
}
