import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/image_listview.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_sub_title.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

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
            left: 3,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 163, 248, 240),
              Colors.teal,
            ]),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: SubTitle(title: "Challenge ${index + 1}"),
              ),
              ImageListView(),
            ],
          ),
        );
      },
    );
  }
}
