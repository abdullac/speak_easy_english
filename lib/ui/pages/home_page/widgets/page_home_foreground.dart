import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/home_page/widgets/home_page_buttons.dart';
import 'package:speak_easy_english/ui/pages/home_page/widgets/home_page_footer.dart';
import 'package:speak_easy_english/ui/pages/home_page/widgets/home_page_titles.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';

class HomePageForeground extends StatelessWidget {
  const HomePageForeground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: limeYellow,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      );
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: boxDecoration,
      child: const HomePageForegroundChilds(),
    );
  }
}



class HomePageForegroundChilds extends StatelessWidget {
  const HomePageForegroundChilds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HomePageTitles(),
        spaceV16,
        HomePageButtons(),
        spaceV16,
        HomePageFooter(),
      ],
    );
  }
}








