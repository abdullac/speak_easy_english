import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/home_page/widgets/page_home_foreground.dart';
import 'package:speak_easy_english/utils/constents/images.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomePageBackground(),
          Column(
            children: [
              HomePageAppLogo(),
              HomePageForeground(),
            ],
          ),
        ],
      ),
    );
  }
}

class HomePageBackground extends StatelessWidget {
  const HomePageBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 128, 0, 30),
            Color.fromARGB(255, 245, 72, 130),
          ], // Dark to light maroon
        ),
      ),
    );
  }
}

class HomePageAppLogo extends StatelessWidget {
  const HomePageAppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Image.asset(
        appLogo, // Replace with your logo image
        height: 80,
        width: 80,
      ),
    );
  }
}


