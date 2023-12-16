import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/item_name_button.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/sample_icon_buttons.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/sample_image_listview.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/image_item_background.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class PageSample extends StatelessWidget {
  const PageSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fruits",
          style: TextStyle(
            color: lightYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: maroon,
      ),
      body: const Stack(
        children: [
          ImageItemBackground(), // Background image
          SampleImageListview(),
          ItemNameButton(), // WordText
          SampleIconButtons(),
        ],
      ),
    );
  }
}
