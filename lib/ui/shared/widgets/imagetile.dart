import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/challange_page/page_challange.dart';
import 'package:speak_easy_english/ui/pages/sample_page/page_sample.dart';
import 'package:speak_easy_english/ui/pages/speak_knowledge_page/page_speak_knowledge.dart';
import 'package:speak_easy_english/ui/shared/widgets/image_listview.dart';
import 'package:speak_easy_english/utils/constents/border_radius.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';

class ListItemImageTile extends StatelessWidget {
  final OnTapImageListView onTapImageListView;
  final String listItemImage;
  final String listItemText;
  const ListItemImageTile({
    super.key,
    required this.onTapImageListView,
    required this.listItemImage,
    required this.listItemText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTapImageListView == OnTapImageListView.gotoSamplesPage
            ? Navigator.of(context).push(MaterialPageRoute(
                builder: (builder) => PageSample(
                      bgImage: listItemImage,
                      categoryName: listItemText,
                    )))
            : onTapImageListView == OnTapImageListView.gotoChallangePage
                ? Navigator.of(context).push(MaterialPageRoute(
                    builder: (builder) => const PageChat(
                          chatPageTitle: 'Chat with Me',
                          chatPageSubTitle: "You can speak to me",
                        )))
                : onTapImageListView ==
                        OnTapImageListView.gotoMalayalamWordsKnowledgePage
                    ? Navigator.of(context).push(MaterialPageRoute(
                        // builder: (builder) => const PageSpeakKnowledge(),
                        builder: (builder) => const PageChat(
                          chatPageTitle: "Speak Words",
                          chatPageSubTitle: "You can speak some Malayalam words to me ",
                        ),
                      ))
                    : onTapImageListView ==
                        OnTapImageListView.gotoEnglishWordsKnowledgePage
                    ? Navigator.of(context).push(MaterialPageRoute(
                        // builder: (builder) => const PageSpeakKnowledge(),
                        builder: (builder) => const PageChat(
                          chatPageTitle: "Speak Words",
                          chatPageSubTitle: "You can speak some English words to me ",
                        ),
                      ))
                    : null;
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 4.0,
        ),
        decoration: BoxDecoration(
          borderRadius: borderRadius10,
          border: Border.all(
            color: maroon,
          ), // Maroon shade
        ),
        child: Column(
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/applesample.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: borderRadius10,
              ),
              // child: btnBgImg,
            ),
            // listItemText != null ? Text(listItemText!) : SizedBox(),
            if (listItemText != null) Text(listItemText!),
          ],
        ),
      ),
    );
  }
}
