import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/image_listview.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_sub_title.dart';
import 'package:speak_easy_english/utils/constents/border_radius.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';

class ChallengeListView extends StatelessWidget {
  const ChallengeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3, // Replace with the desired count
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(
            top: 10,
            bottom: 5,
            left: 2,
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                teal,
                lightMaroon,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomCenter
            ),
            borderRadius: borderRadius12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: SubTitle(title: "Challenge ${index + 1}"),
              ),
              ImageListView(onTapImageListView: OnTapImageListView.gotoChallangePage),
            ],
          ),
        );
      },
    );
  }
}
